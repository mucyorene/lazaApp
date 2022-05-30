// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'dart:io' as io;

// class DatabaseHelper {
//   static Database _db;

//   static const String dBName = 'laza';
//   static const String tableName = 'user';
//   static const int version = 1;

//   static const String userId = 'ID';
//   static const String userName = 'NAME';
//   static const String userEmail = 'EMAIL';
//   static const String userPassword = 'PASSWORD';

//   Future<Database> get db async {
//     if (_db != null) {
//       return _db;
//     }
//     _db = await initDb();
//     return _db;
//   }

//   initDb() async {
//     io.Directory documentDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentDirectory.path, dBName);
//     var db = openDatabase(path, version: version, onCreate: _onCreate);
//     return db;
//   }

//   _onCreate(Database db, int intVersion) async {
//     await db.execute("CREATE TABLE $tableName("
//         "$userId TEXT,"
//         "$userName TEXT,"
//         "$userEmail TEXT,"
//         "$userPassword TEXT,"
//         "PRIMARY KEY($userId)"
//         ")");
//   }
// }
