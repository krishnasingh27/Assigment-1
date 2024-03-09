import 'package:flutter/material.dart';
import 'package:instagram_clone/login_screen.dart';
import 'package:instagram_clone/room_main_screen.dart';
import 'package:instagram_clone/sign_up_screen.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 250,
          ),
          Center(
            child: Container(
                height: 49,
                width: 182,
                child: Image.asset("assets/insta_text_logo.png")),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
              child: Container(
            height: 85,
            width: 85,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                image: DecorationImage(image: AssetImage("assets/Oval.png"))),
          )),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
                child: Text(
              "jacob_w",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ),
          Container(
            height: 44,
            width: 307,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(8)),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RoomMainScreen()));
              },
              child: const Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: const Text(
                  'Switch accounts',
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          const SizedBox(width: 70),
          const Text(
            "Don't have an account ?",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.black45),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: const Text(
                "Sign up.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }
}
