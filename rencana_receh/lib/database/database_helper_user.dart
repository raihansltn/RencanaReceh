import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '/models/users_model.dart'; // Import model yang sudah dibuat

class DatabaseHelperUser {
  // Singleton instance
  static final DatabaseHelperUser instance = DatabaseHelperUser._internal();

  static Database? _database;

  DatabaseHelperUser._internal();

  factory DatabaseHelperUser() => instance;

  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await _initDB();
    return _database;
  }

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'app_database.db');
    return openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE tbl_users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT NOT NULL UNIQUE,
        password TEXT NOT NULL,
        phone_number TEXT NOT NULL UNIQUE
      )
    ''');
  }

  Future<int> insertUser(User user) async {
    final db = await database;
    return await db!.insert('tbl_users', user.toMap());
  }

  // Function to check if username exists
  Future<bool> isUsernameExists(String username) async {
    final db = await database;
    var res = await db!.query(
      'tbl_users',
      where: 'username = ?',
      whereArgs: [username],
    );
    return res.isNotEmpty;
  }
}
