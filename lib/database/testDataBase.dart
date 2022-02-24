import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class TestDB{
  static const DB_NAME = 'todolist.db';
  static const DB_VERSION = 1;
  static Database? _database;

  TestDB._internal();
  static final TestDB instance = TestDB._internal();

  Database? get database => _database;

  init() async {
    _database = await openDatabase(
      join(await getDatabasePath() , DB_NAME ),
        onCreate: (db, version) {

        },
        onUpgrade: (db. oldVersion, newVersion){

        }
        );
  }
}