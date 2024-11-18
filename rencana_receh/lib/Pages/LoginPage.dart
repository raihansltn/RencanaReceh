import 'package:flutter/material.dart';

class LoginPage exteded : StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white[300],
      body: SafeArea(
        children: Center(
          child: Column(
            children: const(
              SizedBox(height: 50),
            )
          )
        )
        // Logo
        Icon(
          Icons.RencanaRecehLogo.png,
          color: Colors.black,
          size: 100,

        )
        // Selamat Datang, Silagkan Login Terlebih dahulu
          Text(
            'Selamat Datang, Silahkan Login Terlebih dahulu',
            style: TextStyle(color: Colors.016B83[700])
            fontSize: 20, 
            )

            const SizedBox(height: 30),
        // Username text field
        Textfield(
          decoration: InputDecoration(
            enabledborder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white[100]),
            ),
          ),
        )

        // Password text field

        // Forgot Password?

        // Sign In Button

        // Or Continue with

        // google + apple + facebook sign in button

        // not a member? register now
      )

    );
    }
}