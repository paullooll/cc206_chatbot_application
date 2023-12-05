// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = 'New User';
  String username = 'username1';
  String email = 'jusername@example.com';
  String bio = 'I love Flutter';
  String password = 'userPassword';

  void _editProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(
          updateProfile: (String newName, String newUsername, String newEmail,
              String newBio, String newPassword) {
            setState(() {
              name = newName;
              username = newUsername;
              email = newEmail;
              bio = newBio;
              password = newPassword;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(156, 134, 115, 3),
        title: const Text(
          'Profile',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: _editProfile,
            color: Colors.white,
          ),
        ],
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
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/jub.jpg'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Name',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(156, 134, 115, 3)),
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(156, 134, 115, 3)),
                      ),
                      Text(
                        username,
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Email',
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color.fromARGB(156, 134, 115, 3)),
                      ),
                      Text(
                        email,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'Bio',
                        style: TextStyle(
                            fontSize: 20,
                            color: const Color.fromARGB(156, 134, 115, 3)),
                      ),
                      Text(
                        bio,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 250.0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EditProfilePage extends StatefulWidget {
  final Function(String, String, String, String, String) updateProfile;

  const EditProfilePage({Key? key, required this.updateProfile})
      : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = 'Jub Rusil Distor';
    usernameController.text = 'JubskieMapagmahal';
    emailController.text = 'jub.distor.hehe@example.com';
    bioController.text = 'I love Flutter development!';
    passwordController.text = 'userPassword';
  }

  void _saveProfile() {
    String newName = nameController.text;
    String newUsername = usernameController.text;
    String newEmail = emailController.text;
    String newBio = bioController.text;
    String newPassword = passwordController.text;

    widget.updateProfile(newName, newUsername, newEmail, newBio, newPassword);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(156, 134, 115, 3),
        title: const Text('Edit Profile'),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/jub.jpg'),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black)),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.black)),
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.black)),
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.black)),
                  obscureText: true,
                  style: const TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: bioController,
                  decoration: const InputDecoration(
                      labelText: 'Bio',
                      labelStyle: TextStyle(color: Colors.black)),
                  //maxLines: 3,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                    onPressed: _saveProfile,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(156, 134, 115, 3),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70))),
                    child: const SizedBox(
                        height: 50,
                        width: 100,
                        child: Center(
                            child: Text(
                          'Save Profile',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )))),
                const SizedBox(height: 100.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
