import 'package:injectable/injectable.dart';
import 'package:showcase/core/db/db.dart';
import 'package:showcase/core/db/db_table.dart';
import 'package:showcase/core/models/image_model.dart';
import 'package:showcase/features/settings/data/datasources/image_local_datasource.dart';

@Injectable(as: ImageLocalDataSource)
class ImageDbDataSource implements ImageLocalDataSource {
  static const DbTable table = DbTable.image;
  final DbProvider db;

  ImageDbDataSource({required this.db});

  @override
  Future<List<ImageModel>> fetch(Map<String, dynamic> requestParams) async {
    final records = await db.read(table, requestParams);
    return records.map((image) => ImageModel.fromJson(image)).toList();
  }
}
