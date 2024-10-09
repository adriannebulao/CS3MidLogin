import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(14, 172, 168, 100)),
      child: const Image(
        image: AssetImage('assets/images/logo.png'),
        height: 125,
      ),
    );
  }
}
