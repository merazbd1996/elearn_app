import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPageIndex = _pageController.page?.round() ?? 0;
      });
    });
  }

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
        actions: [
          TextButton(
            onPressed: () {
              // Navigate to the homepage using GetX
              Get.offAllNamed('/login');
            },
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: PageView(
          controller: _pageController,
          children: [
            buildPage('Online Learning', 'We Provide Classes Online Classes and Pre Recorded Lectures.!'),
            buildPage('Learn from Anytime', 'Book or Save the Lectures for Future'),
            buildPage('Get Online Certificate', 'Analyze your scores and Track your results'),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildDot(currentPageIndex == 0),
          buildDot(currentPageIndex == 1),
          buildDot(currentPageIndex == 2),
        ],
      ),
      floatingActionButton: currentPageIndex == 2
          ? FloatingActionButton(
           onPressed: () {
          // Navigate to sign up page
          Get.toNamed('/login');
          },
        child: Icon(Icons.arrow_forward),
      )
            : null,
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget buildPage(String pageTitle, String pageSubtitle) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    pageTitle,
                    style: TextStyle(fontSize: 24.0),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  pageSubtitle,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(bool isActive) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.grey,
      ),
    );
  }
}
