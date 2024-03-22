import 'package:flutter/material.dart';

class TopMembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Members'),
        backgroundColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/user_avatar.png'),
            ),
            title: Text('Member $index'),
            subtitle: Text('Member $index@example.com'),
            onTap: () {
              // Handle onTap event here if needed
            },
          );
        },
      ),
    );
  }
}
