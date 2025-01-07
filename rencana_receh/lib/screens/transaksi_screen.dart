import 'package:flutter/material.dart';
import '../database/database_helper.dart';
import '../models/transaksi_model.dart';

class AddTransactionScreen extends StatefulWidget {
  @override
  _AddTransactionScreenState createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final _formKey = GlobalKey<FormState>();
  String _type = 'Income';
  double _amount = 0;
  String _description = '';
  DateTime _date = DateTime.now();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  // Method to save transaction to database
  void _saveTransaction() async {
  if (_formKey.currentState!.validate()) {
    _formKey.currentState!.save();
    final transaction = FinancialTransaction(
      type: _type,
      amount: _amount,
      description: _description,
      date: _date,
    );

    // Log untuk memastikan data yang akan dikirim ke server
    print('Saving transaction: $transaction'); 

    // Panggil fungsi untuk menyimpan transaksi
    await DatabaseHelper().insertTransaction(transaction);

    // Log setelah berhasil menyimpan
    print('Transaction saved: $transaction'); 

    // Kembali ke halaman sebelumnya setelah menyimpan
    // Navigator.pop(context); 
  }
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Transaction')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Dropdown for transaction type
              DropdownButtonFormField<String>(
                value: _type,
                items: ['Income', 'Expense', 'Debt', 'Receivable']
                    .map((type) => DropdownMenuItem(
                          value: type,
                          child: Text(type),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _type = value!;
                  });
                },
                decoration: InputDecoration(labelText: 'Transaction Type'),
              ),
              
              // TextField for amount with validation
              TextFormField(
                controller: _amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Amount cannot be empty';
                  }
                  final double? parsedValue = double.tryParse(value);
                  if (parsedValue == null || parsedValue <= 0) {
                    return 'Please enter a valid amount greater than 0';
                  }
                  return null;
                },
                onSaved: (value) {
                  _amount = double.parse(value!);
                },
              ),

              // TextField for description
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                onSaved: (value) {
                  _description = value ?? '';
                },
              ),

              // Date Picker for selecting transaction date
              ListTile(
                title: Text('Date: ${_date.toLocal()}'.split(' ')[0]),
                trailing: Icon(Icons.calendar_today),
                onTap: () async {
                  final selectedDate = await showDatePicker(
                    context: context,
                    initialDate: _date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (selectedDate != null && selectedDate != _date) {
                    setState(() {
                      _date = selectedDate;
                    });
                  }
                },
              ),
              
              SizedBox(height: 20),
              
              // Save Button
              ElevatedButton(
                onPressed: _saveTransaction,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class DashboardScreen extends StatefulWidget {
//   final User user;
//   DashboardScreen({required this.user});
//   @override
//   _DashboardScreenState createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   int _selectedIndex = 0;
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void _navigateTo(BuildContext context, Widget screen) {
//     Navigator.of(context).push(MaterialPageRoute(builder: (_) => screen));
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> _screens = [HomeScreen(user: widget.user)];
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () async {
//               await FirebaseAuth.instance.signOut();
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(builder: (context) => LoginScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountName: Text(widget.user.displayName ?? 'Pengguna'),
//               accountEmail: Text(widget.user.email ?? ''),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: widget.user.photoURL != null
//                     ? NetworkImage(widget.user.photoURL!)
//                     : null,
//                 child: widget.user.photoURL == null ? Icon(Icons.person) : null,
//               ),
//             ),
//             ListTile(
//               title: Text('Home'),
//               leading: Icon(Icons.home),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 0;
//                 });
//               },
//             ),
//             Divider(),
//             ListTile(
//               title: Text('Mahasiswa'),
//               leading: Icon(Icons.list),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 1;
//                 });
//               },
//             ),
//             Divider(),
//             ListTile(
//               title: Text('To Do'),
//               leading: Icon(Icons.check_box),
//               onTap: () {
//                 Navigator.pop(context);
//                 setState(() {
//                   _selectedIndex = 2;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//       body: _screens[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.list),
//             label: 'Mahasiswa',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.check_box),
//             label: 'To Do',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
