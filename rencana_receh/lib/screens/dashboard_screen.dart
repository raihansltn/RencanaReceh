import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';
import 'Home_screen.dart';
import 'package:rencana_receh/screens/saving.dart';
import 'package:rencana_receh/screens/history.dart';
import 'package:rencana_receh/screens/pemasukan/page_pemasukan.dart';
import 'package:rencana_receh/screens/pengeluaran/page_pengeluaran.dart';
import '../list/transaksi_list.dart';

class DashboardScreen extends StatefulWidget {
  final User user;
  DashboardScreen({required this.user});
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

// Di dalam DashboardScreen
class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(user: widget.user),
      TransactionListScreen(),
      PagePemasukan(),
      PagePengeluaran(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(widget.user.displayName ?? 'Pengguna'),
              accountEmail: Text(widget.user.email ?? ''),
              currentAccountPicture: CircleAvatar(
                backgroundImage: widget.user.photoURL != null
                    ? NetworkImage(widget.user.photoURL!)
                    : null,
                child: widget.user.photoURL == null ? Icon(Icons.person) : null,
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('History'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 1; // Tab untuk melihat transaksi
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('Income'),
              leading: Icon(Icons.addchart),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 3; // Tab untuk melihat transaksi
                });
              },
            ),
            Divider(),
            ListTile(
              title: Text('Outcome'),
              leading: Icon(Icons.add_shopping_cart),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  _selectedIndex = 2; // Tab untuk melihat transaksi
                });
              },
            ),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.addchart_sharp),
            label: 'Income',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Outcome',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Color(0xFF6EB4C0),
        backgroundColor: Color(0xFF016B83),
      ),
    );
  }
}
