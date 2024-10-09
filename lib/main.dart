import 'package:cs3midlogin/screens/dashboard.dart';
import 'package:cs3midlogin/screens/home_screen.dart';
import 'package:cs3midlogin/screens/login_screen.dart';
import 'package:cs3midlogin/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/dashboard': (context) => const Dashboard()
      },
    );
  }
}
