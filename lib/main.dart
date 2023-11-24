import 'package:flutter/material.dart';
import 'package:ui_chatbot/features/landing_page.dart'; 
import 'package:ui_chatbot/features/page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    // loading logic
    await Future.delayed(const Duration(seconds: 7));
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoading ? const LandingPage() : const Page1(),
    );
  }
}
