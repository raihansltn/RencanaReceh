import 'package:flutter/material.dart';
import 'package:rencana_receh/models/transaksi_model.dart';
import '../database/database_helper.dart';
import 'package:sqflite/sqflite.dart';
import '../screens/transaksi_screen.dart';

class TransactionListScreen extends StatelessWidget {
  Future<List<FinancialTransaction>> _loadTransactions() async {
    return await DatabaseHelper().getTransactions();  // Ambil transaksi dari database
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transaction List')),
      body: FutureBuilder<List<FinancialTransaction>>(
        future: _loadTransactions(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('An error occurred'));
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTransactionScreen()),
          );
        },
      ),
    );
  }
}