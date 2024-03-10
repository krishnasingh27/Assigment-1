import 'package:flutter/material.dart';
import 'package:instagram_clone/room_main_screen.dart';
import 'package:instagram_clone/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/back_button.png",
              height: 18,
              width: 10,
            )),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 80,
          ),
          Center(
            child: Container(
                height: 49,
                width: 182,
                child: Image.asset("assets/insta_text_logo.png")),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 44,
              width: 343,
              child: Material(
                elevation: 1,
                borderOnForeground: true,
                borderRadius: BorderRadius.circular(8),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 5, left: 10, bottom: 5),
                      hintText: "Enter User Id",
                      filled: true,
                      fillColor: Color(0xffFAFAFA),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              height: 44,
              width: 343,
              child: Material(
                elevation: 1,
                borderOnForeground: true,
                borderRadius: BorderRadius.circular(8),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(top: 5, left: 10, bottom: 5),
                      hintText: "Password",
                      filled: true,
                      fillColor: Color(0xffFAFAFA),
                      border: InputBorder.none),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => RoomMainScreen()),
                    (route) => false);
              },
              child: Container(
                height: 44,
                width: 343,
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.blue),
              )),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 17,
                  width: 17,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/fb_logo.png"))),
                ),
              ),
              Text(
                "Log in with Facebook",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 132, height: 1, child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(width: 132, height: 1, child: Divider()),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account ?",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.black45),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: const Text(
                    "Sign up.",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: Colors.blue),
                  ))
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        width: double.infinity,
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black12))),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  "Instagram oT Facebook",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 12),
                ),
              )
            ]),
      ),
    );
  }
}
