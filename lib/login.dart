import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void onLoginPressed(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Dashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Username field
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),

            // Email field
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),

            // Password field
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),

            // Login button
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                onLoginPressed(context);
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
