// ignore_for_file: library_private_types_in_public_api
import 'package:chatter/features/chat_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String botName = 'ChatBot';
  String selectedLanguage = 'English';
  bool receiveNotifications = true;
  bool darkMode = false;
  double textSize = 16.0;
  bool playSound = true;

  final TextEditingController botNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    botNameController.text = botName;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(156, 134, 115, 3),
        title: const Text('Chatbot Settings'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/minimal.jpg'),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ListTile(
                  title: const Text('Bot Name'),
                  subtitle: TextField(
                    controller: botNameController,
                    decoration:
                        const InputDecoration(hintText: 'Enter Bot Name'),
                  ),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: const Text('Language'),
                  subtitle: DropdownButton<String>(
                    value: selectedLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLanguage = newValue!;
                      });
                    },
                    items: <String>['English', 'Spanish', 'French', 'German']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: const Text('Select Language'),
                  ),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: const Text('Text Size'),
                  subtitle: Slider(
                    inactiveColor: Colors.grey,
                    activeColor: const Color.fromARGB(156, 134, 115, 3),
                    value: textSize,
                    min: 10,
                    max: 30,
                    onChanged: (value) {
                      setState(() {
                        textSize = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 15),
                ListTile(
                  title: const Text('Receive Notifications'),
                  subtitle: Switch(
                    activeColor: const Color.fromARGB(156, 134, 115, 3),
                    value: receiveNotifications,
                    onChanged: (bool value) {
                      setState(() {
                        receiveNotifications = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Play Sound'),
                  subtitle: Switch(
                    activeColor: const Color.fromARGB(156, 134, 115, 3),
                    value: playSound,
                    onChanged: (bool value) {
                      setState(() {
                        playSound = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.only(left: 110, right: 110),
                  child: SizedBox(
                    height: 50,
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
                        'Save',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 250.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
