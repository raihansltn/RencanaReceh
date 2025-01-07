import 'package:flutter/material.dart';
import 'package:rencana_receh/models/transaksi_model.dart';
import '../database/database_helper.dart';
import '../screens/transaksi_screen.dart';

class TransactionListScreen extends StatelessWidget {
  Future<List<FinancialTransaction>> _loadTransactions() async {
    // Ambil transaksi dari database
    final transactions = await DatabaseHelper().getTransactions();
    print('Loaded transactions: $transactions');  // Log untuk memeriksa transaksi yang diambil
    return transactions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction List')),
      body: FutureBuilder<List<FinancialTransaction>>(
        future: _loadTransactions(),  // Panggil _loadTransactions untuk mengambil data
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('An error occurred: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No transactions available'));
          } else {
            final transactions = snapshot.data!;
            return ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                final transaction = transactions[index];
                return ListTile(
                  title: Text('${transaction.type} - \$${transaction.amount}'),
                  subtitle: Text(transaction.description),
                  trailing: Text('${transaction.date.toLocal()}'.split(' ')[0]),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigasi ke halaman AddTransactionScreen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTransactionScreen()),
          ).then((_) {
            // Setelah kembali dari AddTransactionScreen, panggil _loadTransactions untuk refresh data
            // Gunakan setState untuk memuat ulang halaman
            (context as Element).reassemble();
          });
        },
      ),
    );
  }
}
