import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
 const LandingPage({super.key});

 @override Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/features/logo.png',
                width: 250,
                height: 250,
              ),
              const SizedBox(height: 20),
              const TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                 hintText: 'Welcome to Ambatu.help',
                 hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                 border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 20),
              const CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
 }
}
