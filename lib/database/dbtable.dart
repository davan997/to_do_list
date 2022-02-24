import 'package:to_do_list/database/testDataBase.dart';
import 'package:to_do_list/model/question.dart';
import 'package:sqflite/sqflite.dart';

class DBTable{
  static const TABLE_NAME = 'todolist';
  static const CREATE_TABLE_QUERY = '''
    CREATE TABLE $TABLE_NAME(
      id INTEGER PRIMARY KEY,
      content TEXT
    );
  ''';
  static const DROP_TABLE_QUERY = '''
    DROP TABLE IF EXISTS $TABLE_NAME
  ''';
  Future<int> insertTodo(Question question){
    final Database? db = TestDB.instance.database;
    return db!.insert(
      TABLE_NAME,
      question.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}