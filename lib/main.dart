import 'package:cs3midlogin/screens/dashboard.dart';
import 'package:cs3midlogin/screens/home_screen.dart';
import 'package:cs3midlogin/screens/login_screen.dart';
import 'package:cs3midlogin/screens/sign_up_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final dio = Dio();

  void getHttp() async {
    final response = await dio.get('https://fakestoreapi.com/products');
    print(response.data[0]);
  }

  @override
  Widget build(BuildContext context) {
    getHttp();
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
