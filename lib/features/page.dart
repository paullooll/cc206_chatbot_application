import 'package:flutter/material.dart';
import 'package:cc206_chatbot_application/features/login_page.dart';
import 'package:cc206_chatbot_application/features/signup_page.dart';


class Page1 extends StatefulWidget {
 const Page1({Key? key}) : super(key: key);
 @override
  State<Page1> createState() => _AboutMeState();
}

class _AboutMeState extends State<Page1> {
 @override
 Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) {
            return DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                 bottom: const TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.account_circle),),
                      Tab(icon: Icon(Icons.info)),
                    ],
                 ),
                ),
                body: const TabBarView(
                 children: [
                    Login(),
                    SignUp(),
                 ],
                ),
              ),
            );
          },
        );
      },
    );
 }
}
