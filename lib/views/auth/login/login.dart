import 'package:e_learning_app/global_widgets/custom_button.dart';
import 'package:e_learning_app/views/auth/register/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          // Go back to the previous screen
          Get.back();
        },
      ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white, // Set background color to white
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/logo.png"),
              SizedBox(height: 10,),
              Text(
                "Let's you in",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 40),
              CustomButton(
                title: 'Continue with Google',
                onTap: () {
        
                },
                prefixImage: Image.asset('assets/images/google.png'), // Provide the prefix image
              ),
              SizedBox(height: 20),
              CustomButton(
                title: 'Continue with Apple',
                onTap: () {
        
                },
                prefixImage: Image.asset('assets/images/apple.png'), // Provide the prefix image
              ),
              SizedBox(height: 50),
              Text("Or"),
              SizedBox(height: 60),
        
              TextButton(
                onPressed: () {
                  Get.to(RegisterScreen());
                },
                child: Text(
                  "Don't have an account? SIGN UP",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}