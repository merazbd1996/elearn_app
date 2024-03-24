import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularCourses extends StatefulWidget {
  const PopularCourses({super.key});

  @override
  State<PopularCourses> createState() => _PopularCoursesState();
}

class _PopularCoursesState extends State<PopularCourses> {
  int _selectedTextIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Courses"),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Go back to the previous screen
            Get.back();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Get.toNamed('/search');
            },
          ),
        ],
      ),

      backgroundColor: _selectedTextIndex == -1 ? Colors.white : null,
      // Set grey background when no container is selected

      body: Column(
        children: [
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
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/logo.png"),
                      SizedBox(height: 10.0),
                      Text(
                        'Category $index',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

