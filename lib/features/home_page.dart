import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Center align person icon
            Center(
              child: Icon(Icons.person, size: 100),
            ),

            // Add border to text widget
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(20),
              height: 350,
              width: 500,
              child: Center(child: Text('CHAT MESSAGES')),
            ),

            // Position mic at bottom
            Positioned(
              right: 20,
              bottom: 0,
              child: Icon(Icons.mic, size: 50),
            )
          ],
        ),
      ),
    );
  }
}
