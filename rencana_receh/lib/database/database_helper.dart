import 'dart:convert';
import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:path/path.dart';
import '../models/transaksi_model.dart'; // Import model yang sudah dibuat

class DatabaseHelper {
  static const String BASE_URL = 'http://localhost/rencana_recehsql/'; // Ganti dengan URL server PHP Anda

  // Fungsi untuk menyimpan transaksi ke database melalui API PHP
  Future<void> insertTransaction(FinancialTransaction transaction) async {
  final url = Uri.parse('$BASE_URL/ModelTransaksi.php');
    final response = await http.post(url, body: {
      'type': transaction.type,
      'amount': transaction.amount.toString(),
      'description': transaction.description,
      'date': transaction.date.toIso8601String(),
    });

    
}


  // Fungsi untuk mengambil transaksi dari database melalui API PHP
  Future<List<FinancialTransaction>> getTransactions() async {
  final url = Uri.parse('$BASE_URL/transaksis.php');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.body);

    return data.map((item) {
      // Pastikan ID dikonversi ke int jika perlu, dan melakukan pengecekan tipe data lainnya.
      return FinancialTransaction.fromMap({
        'id': int.tryParse(item['id'].toString()) ?? 0, // Mengonversi ke int, default 0 jika gagal
        'type': item['type'] as String,  // Pastikan 'type' adalah String
        'amount': item['amount'] is String ? double.tryParse(item['amount']) ?? 0.0 : item['amount'],  // Pastikan 'amount' adalah double
        'description': item['description'] as String,  // Pastikan 'description' adalah String
        'date': item['date'] as String,  // Pastikan 'date' adalah String
      });
    }).toList();
  } else {
    throw Exception('Failed to load transactions');
  }
}
}