import 'package:flutter/material.dart';
import 'package:cc206_chatbot_application/signup/button.dart';
import 'package:cc206_chatbot_application/signup/text.dart';


void main() {
  runApp(const SignUp());
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ambatu.help Sign up',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(
          30,
          88,
          241,
          1,
        )),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  _LoginPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(
        255,
        255,
        255,
        1.0,
      ),
      body: _builduI(),
    );
  }

  Widget _builduI() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _header(),
          _loginForm(),
        ],
      ),
    );
  }

  Widget _header() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      color: const Color.fromRGBO(230, 253, 253, 1.0),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Text(
              "Sign Up to Ambatu.Help",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
          Image.asset(
            "assets/images/illustration.png",
            width: MediaQuery.of(context).size.width * 0.45,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }

  Widget _loginForm() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Container(
        color: const Color.fromRGBO(
          255,
          255,
          255,
          1.0,
        ),
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 25,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _formFields(),
                _bottomButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _formFields() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          RoundedTextFormField(
            hintText: "Name",
            prefixIcon: Icons.person,
          ),
          RoundedTextFormField(
            hintText: "Age",
            prefixIcon: Icons.info,
            obscureText: true,
          ),
          RoundedTextFormField(
            hintText: "Gender",
            prefixIcon: Icons.male,
            obscureText: true,
          ),
          RoundedTextFormField(
            hintText: "Email Address",
            prefixIcon: Icons.email_outlined,
            obscureText: true,
          ),
          RoundedTextFormField(
            hintText: "Password",
            prefixIcon: Icons.lock_outline,
            obscureText: true,
          )

        ],
      ),
    );
  }

  Widget _bottomButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.80,
          height: MediaQuery.of(context).size.height * 0.06,
          child: RoundedCircularButton(
            text: "Sign Up", onPressed: () { },
          ),
        ),
      ],
    );
  }
}
