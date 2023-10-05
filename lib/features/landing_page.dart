import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'logo.png', 
            width: 50,
            height: 50,
          ),
          SizedBox(height: 20), 
          TextField(
            decoration: InputDecoration(
              hintText: 'Welcome to ambatu.help',
            ),
          ),
        ],
      ),
    );
  }
}
