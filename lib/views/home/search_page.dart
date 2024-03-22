import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SearchPage extends StatelessWidget {
  final List<String> searchHistory = [
    'Flutter',
    'Dart',
    'Mobile Development',
    'OpenAI',
    'AI',
  ];

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
           title: const Text("Search"),
          backgroundColor: Colors.white,
           leading: IconButton(
            icon: Icon(Icons.arrow_back),
           onPressed: () {

             Get.back();
              },
            ),

        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to recent searches page or show a modal
                    },
                    child: Text('Recents Search See all>'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: searchHistory.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(searchHistory[index]),
                    onTap: () {
                      // Handle tapping on a search history item
                    },
                  );
                },
              ),
            ),
          ],
        ),

    );
  }
}
