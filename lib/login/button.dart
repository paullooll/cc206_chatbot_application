import 'package:flutter/material.dart';
import 'package:ui_chatbot/features/home_page.dart';

class RoundedCircularButton extends StatelessWidget {
  final String text;

  const RoundedCircularButton({super.key, required this.text, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ChatDetailPage()),
              );},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
