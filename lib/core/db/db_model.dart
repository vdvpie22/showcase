import 'package:showcase/core/db/db_table.dart';

abstract class DbModel {
  DbTable get dbTable;
  Map<String, dynamic> toJson();
}