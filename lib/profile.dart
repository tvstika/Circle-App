import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String email;

  ProfilePage({required this.username, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Profile icon
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.person,
                size: 80,
                color: Colors.white,
              ),
            ),

            // Username
            SizedBox(height: 16.0),
            Text(
              'Username: ${username ?? 'N/A'}',
              style: TextStyle(fontSize: 20),
            ),

            // Email
            SizedBox(height: 8.0),
            Text(
              'Email: ${email ?? 'N/A'}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
