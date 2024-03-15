import 'dart:async';
import 'package:e_learning_app/utils/colors.dart';
import 'package:e_learning_app/views/intro/intro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import Get package


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to IntroScreen after 2 seconds
    Timer(const Duration(seconds: 3), () {
      Get.off( IntroScreen()); // Navigate to IntroScreen using GetX
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png', // Change the path according to your folder structure
                width: 200, // Adjust width as needed
                height: 200, // Adjust height as needed
              ),
              const Text(
                'Welcome to MyApp', // Your app's name or intro text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
