import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Transactions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 10, // Dummy count, replace with transaction data
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(
                        index % 2 == 0
                            ? Icons.arrow_upward
                            : Icons.arrow_downward,
                        color: index % 2 == 0 ? Colors.red : Colors.green,
                      ),
                      title: Text(index % 2 == 0 ? 'Expense' : 'Income'),
                      subtitle: Text('Amount: \$${(index + 1) * 50}'),
                      trailing: Text('Jan ${(index + 1).toString()}, 2025'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
