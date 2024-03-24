import 'dart:async';
import 'package:e_learning_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../intro/intro.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
      body: Stack(
        children: [
          Container(
            color: AppColors.primary,
          ),
          Center(
            child: Image.asset("assets/images/logo.png"),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("My app",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                  fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ],
      )
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:e_learning_app/utils/colors.dart'; // Import your color definitions
//
// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             color: AppColors.primary, // Set your desired background color
//           ),
//           Center(
//             child: Image.asset(
//               'assets/images/logo.png', // Change the path according to your folder structure
//               width: 200, // Adjust width as needed
//               height: 200, // Adjust height as needed
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 16.0), // Add some bottom padding
//               child: Text(
//                 'Welcome to MyApp', // Your app's name or intro text
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
