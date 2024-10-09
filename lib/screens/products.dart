import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products({super.key});

  final dio = Dio();

  void getHttp() async {
    final response = await dio.get('https://fakestoreapi.com/products');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Wrap(
          direction: Axis.horizontal,
        ),
      )),
    );
  }
}
