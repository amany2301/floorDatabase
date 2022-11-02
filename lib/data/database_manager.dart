import 'package:demodatabase/data/database.dart';

class DatabaseManager{
  AppDatabase? _database;

  static DatabaseManager? _instance;

  DatabaseManager._() {
    getDatabase();
  }

  factory DatabaseManager() {
    _instance ??= DatabaseManager._();
    return _instance!;
  }

   getDatabase() async {
    _database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
    return _database;
  }

}
