import 'package:flutter/material.dart';
import 'package:instagram_clone/login_option_screen.dart';

class SplashSCreen extends StatefulWidget {
  const SplashSCreen({super.key});

  @override
  State<SplashSCreen> createState() => _SplashSCreenState();
}

class _SplashSCreenState extends State<SplashSCreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginOptionScreen()),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * .3,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage("assets/logo.png"))),
              ),
              const SizedBox(
                height: 200,
              ),
              const Text(
                "from",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 50,
                width: 80,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/meta_logo.png"))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
