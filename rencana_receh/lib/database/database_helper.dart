import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../models/transaksi_model.dart'; 
// Import model yang sudah dibuat

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  DatabaseHelper._internal();

  factory DatabaseHelper() {
    return _instance;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    String path = join(await getDatabasesPath(), 'financial_app.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE transactions (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            type TEXT,
            amount REAL,
            description TEXT,
            date TEXT
          )
        ''');
      },
    );
  }

  Future<int> insertTransaction(FinancialTransaction transaction) async {
    final db = await database;
    return await db.insert('transactions', transaction.toMap());
  }

  Future<List<FinancialTransaction>> getTransactions() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('financial transactions');

    return List.generate(maps.length, (i) {
    return FinancialTransaction.fromMap(maps[i]);
  });
  }
}