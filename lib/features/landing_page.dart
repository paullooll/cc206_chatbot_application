import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'lib/features/logo.png',
              width: 250,
              height: 250,
            ),
          ),
          SizedBox(height: 20), 
          Center(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Welcome to Ambatu.help',
                hintStyle: TextStyle(fontSize: 20),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(height: 10),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}