import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'firebase_options.dart';
import 'services/auth_service.dart';
import 'screens/login_screen.dart';
import 'screens/dashboard_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        projectId: 'auth-project-flutter-444107',
        messagingSenderId: '959178924674',
        apiKey: 'AIzaSyAOROyBi7WUgMaVlQHT0aDpXcxj0UkwYjY',
        appId: '1:959178924674:android:72a1285f729260a6a20a9b'),
  );
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());
//beri waktu splash screen 2 detik
  await Future.delayed(const Duration(seconds: 2));
// hapus splash screen dengan function remove()
  FlutterNativeSplash.remove();
//await Firebase.initializeApp(
//options: DefaultFirebaseOptions.currentPlatform,
//);
}

class MyApp extends StatelessWidget {
  final AuthService _authService = AuthService();

  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: StreamBuilder<User?>(
        stream: _authService.user,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            User? user = snapshot.data;
            return user == null ? LoginScreen() : DashboardScreen(user: user);
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
