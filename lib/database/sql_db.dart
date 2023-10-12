import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {
  String dbName = "tasks.db";
  Database? _db;

  get getDb async {
    if (_db == null) {
      Database db = await iniltialDb();
      return db;
    } else {
      return _db;
    }
  }

  iniltialDb() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, dbName);
    Database db = await openDatabase(path, onCreate: _onCreate, version: 1);

    return db;
  }

  _onCreate(Database db, int version) async {
    // Future.wait(futures)
    await db.execute(
        '''CREATE TABLE `tasks` (`id` INTEGER NOT NULL PRIMARY KEY , `taskTitle` TEXT , `check` INTEGER)''');
    // await db.execute(
    //     '''CREATE TABLE `completedTasks` (`id` INTEGER NOT NULL PRIMARY KEY , `taskTitle` TEXT , `check` INTEGER)''');
  }

  

  Future<int?> insertData(
      {required String table, required Map<String, Object?> values}) async {
    Database db = await getDb;
    int? respose;
    try {
      respose = await db.insert(table, values);
      return respose;
    } catch (e) {
      print(e);
    }

    return null;
  }

  Future<List<Map<String, Object?>>?> readData(
      {required String table, String? where}) async {
    Database db = await getDb;
    List<Map<String, Object?>>? respose;
    try {
      respose = await db.query(table, where: where);
      return respose;
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<int?> updateData(
      {required String table,
      required Map<String, Object?> values,
      String? where}) async {
    Database db = await getDb;
    int? respose;
    try {
      respose = await db.update(table, values, where: where);
      return respose;
    } catch (e) {
      print(e);
    }

    return null;
  }

  Future<int?> deleteData({required String table, String? where}) async {
    Database db = await getDb;
    int? respose;
    try {
      respose = await db.delete(table, where: where);
      return respose;
    } catch (e) {
      print(e);
    }
    return null;

    
  }
}
