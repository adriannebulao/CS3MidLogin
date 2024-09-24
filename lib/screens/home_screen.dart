import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background_image.jpg'),
                    fit: BoxFit.cover)),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: Container(
              color: Colors.black.withOpacity(0.0),
            ),
          ),
          Column(children: [
            const SizedBox(
              height: 25,
            ),
            const Center(
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                height: 125,
              ),
            ),
            const Center(
              child: Text("Photoma",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 172, 168, 100)),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                      color: Color.fromRGBO(14, 172, 168, 100),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
