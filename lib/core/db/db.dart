import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:showcase/core/db/db_table.dart';
import 'package:sqflite/sqflite.dart';
import 'package:showcase/core/db/data_base.dart';

abstract class DbProvider {
  Future<void> create(DbTable table, Map<String, dynamic> data);

  Future<List<Map<String, Object?>>> read(DbTable table, Map<String, dynamic> data);

  Future<void> update(DbTable table, Map<String, dynamic> data);

  Future<void> delete(DbTable table, Map<String, dynamic> data);
}

@Singleton(as: DbProvider)
class DbImpl extends DataBase implements DbProvider {
  late Database dataBase;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final String path = join(documentsDirectory.path, DataBase.name);

    dataBase = await openDatabase(
      path,
      version: DataBase.version,
      onCreate: onCreate,
    );
  }

  Future<void> onCreate(Database db, int version) async {
    return db.execute(
      'CREATE TABLE images(id INTEGER PRIMARY KEY, path TEXT)',
    );
  }

  @override
  Future<void> create(DbTable table, Map<String, dynamic> data) async {
    await dataBase.insert(table.getName(), data);
  }

  @override
  Future<void> delete(DbTable table, Map<String, dynamic> data) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> update(DbTable table, Map<String, dynamic> data) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<List<Map<String, Object?>>> read(DbTable table, Map<String, dynamic> data) async {
    return await dataBase.query(table.getName());
  }
}
