import 'package:flutter/material.dart';
import 'package:virtualtutor/pages/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController studentIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[200], // Use the desired shade of orange
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/university_logo.png', height: 150), // Replace with your university logo image
            SizedBox(height: 32.0),
            TextField(
              controller: studentIdController,
              decoration: InputDecoration(
                labelText: '學號',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: '密碼',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Perform login logic here
                String studentId = studentIdController.text;
                String password = passwordController.text;
                // Add your login validation code or API call here
                // You can navigate to the dashboard screen if the login is successful
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                );
              },
              child: Text('登入'),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // Use the same shade of orange as the background
              ),
            ),
          ],
        ),
      ),
    );
  }
}

