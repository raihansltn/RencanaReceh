import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(), // Halaman awal
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              // Ganti Icon dengan Image.asset
              Image.asset(
                'assets/assets/images/RencanaRecehLogo.png', // Path gambar yang benar
                color: Colors.black,
                width: 100, // Atur ukuran gambar
                height: 100, // Atur ukuran gambar
                fit: BoxFit.cover, // Sesuaikan gambar dengan kotak yang disediakan
              ),
              const SizedBox(height: 20),
              // Text
              Text(
                'Selamat Datang, Silahkan Login Terlebih dahulu',
                style: TextStyle(color: Color(0xFF016B83), fontSize: 20),
              ),
              const SizedBox(height: 30),
              // Username text field
              TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Password text field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Sign In Button
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign In'),
              ),
              const SizedBox(height: 20),
              // Or Continue with
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Gambar Google Login Button
                  GestureDetector(
                    onTap: () {
                      // Tindakan untuk tombol Google login
                    },
                    child: Image.asset(
                      'assets/assets/images/google-logo.png', 
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Gambar Apple Login Button
                  GestureDetector(
                    onTap: () {
                      // Tindakan untuk tombol Apple login
                    },
                    child: Image.asset(
                      'assets/assets/images/logo-apple.png', 
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Gambar Facebook Login Button
                  GestureDetector(
                    onTap: () {
                      // Tindakan untuk tombol Facebook login
                    },
                    child: Image.asset(
                      'assets/assets/images/logo-facebook.png', 
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Not a member? Register now
              TextButton(
                onPressed: () {},
                child: Text('Not a member? Register now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}