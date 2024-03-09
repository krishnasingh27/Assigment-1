import 'package:flutter/material.dart';

class LoginOptionScreen extends StatefulWidget {
  const LoginOptionScreen({super.key});

  @override
  State<LoginOptionScreen> createState() => _LoginOptionScreenState();
}

class _LoginOptionScreenState extends State<LoginOptionScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Container(
              height: 49,
              width: 182,
              child: Image.asset("assets/insta_text_logo.png")),
        ],
      ),
    );
  }
}
