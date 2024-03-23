import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_learning_app/views/auth/login/login.dart';
import 'package:e_learning_app/views/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../profile/top_members.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTextIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HI, Ronald A. Martin",
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "What Would you like to learn Today?\n Search Below",
                          style: TextStyle(fontSize: 16.0, color: Colors.grey),
                        ),
                        IconButton(
                          icon: Icon(Icons.notification_add_outlined),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.filter_alt_outlined),
                        labelText: "Search for...",
                      ),
                    ),
                    SizedBox(height: 20.0),
                    CarouselSlider(
                      items: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/logo.png",
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/logo.png",
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to sign up page
                            Get.toNamed('/categories-screen');
                          },
                          child: Text("SEE ALL >"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 35.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (int i = 0; i < 3; i++)
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedTextIndex = i;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: _selectedTextIndex == i ? Colors.blue : Colors
                                      .grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Text(
                                  i == 0 ? "3d Design" : i == 1
                                      ? "Arts & Humanities"
                                      : "Graphic Design",
                                  style: TextStyle(fontSize: 15.0,
                                      color: _selectedTextIndex == i
                                          ? Colors.white
                                          : Colors.black),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Categories",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        TextButton(
                          onPressed: () {
                            // Navigate to sign up page
                            Get.toNamed('/popular-courses');
                          },
                          child: Text("SEE ALL >"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    CarouselSlider(
                      items: [
                        Container(
                          color: Colors.red,
                          width: 300,
                          height: 200,

                          child: Center(child: Text('Category 1')),
                        ),
                        Container(
                          color: Colors.blue,
                          width: 300,
                          height: 200,
                          child: Center(child: Text('Category 2')),
                        ),
                        Container(
                          color: Colors.green,
                          width: 300,
                          height: 200,
                          child: Center(child: Text('Category 3')),
                        ),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Top Members",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(TopMembersPage());
                          },
                          child: Text("SEE ALL >"),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                           GestureDetector(
                           onTap: (){
                             Get.to(ProfilePage());
                         },
                         child: CircleAvatar(
                          child: Image.asset("assets/images/logo.png"),
                           backgroundColor: Colors.transparent,
                         ),
                       ),
                             GestureDetector(
                               onTap: (){
                                 Get.to(ProfilePage());
                               },
                               child: CircleAvatar(
                                 child: Image.asset("assets/images/logo.png"),
                                 backgroundColor: Colors.transparent,
                               ),
                             ),
                            CircleAvatar(
                                child: Image.asset("assets/images/logo.png"),
                                 backgroundColor: Colors.transparent,
                            ),
                           CircleAvatar(
                               child: Image.asset("assets/images/logo.png"),
                           backgroundColor: Colors.transparent,
                          ),
                            ],
                  ),

                 ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

