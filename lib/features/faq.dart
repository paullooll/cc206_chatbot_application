import 'package:chatter/features/chat_page.dart';
import 'package:flutter/material.dart';

class faqpage extends StatefulWidget {
  const faqpage({super.key});

  @override
  State<faqpage> createState() => _faqpageState();
}

class _faqpageState extends State<faqpage> {
  String dropdownValue = 'What is a FAQ chatbot?';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(156, 134, 115, 3),
          title: const Text('FAQs'),
        ),
        // existing code

        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/minimal.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                // logo
                const SizedBox(height: 60.0),

                const TextField(
                  decoration: InputDecoration(labelText: 'Name'),
                ),

                const TextField(
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                // existing code

                const SizedBox(height: 25.0),

                TextField(
                  controller: TextEditingController(
                    text: dropdownValue,
                  ),
                ),

                DropdownButton<String>(
                  value: dropdownValue,
                  items: [
                    'What features do I still have access to in the new Pages experience?',
                    'How do I interact with the chatbot?',
                    'What is a FAQ chatbot?',
                    'Is chatbot small talk important?'
                  ]
                      .map((item) => DropdownMenuItem(
                            value: item,
                            child: const Text('*'),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                ),
                const SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: SizedBox(
                    height: 50,
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChatPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(156, 134, 115, 3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 250.0),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
