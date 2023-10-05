import 'package:flutter/material.dart';
import 'package:cc206_chatbot_application/features/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ambatu.help Landing Page',
      theme: ThemeData(
      ),
      home: LandingPage(),
    );
  }
}
