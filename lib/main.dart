import 'package:flutter/material.dart';
import 'package:virtualtutor/pages/login_page.dart' as login;
import 'package:virtualtutor/pages/dashboard_page.dart' as dashboard;

void main() {
  runApp(VirtualTutorApp());
}

class VirtualTutorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Tutor',
      theme: ThemeData(primaryColor: Colors.orange),
      initialRoute: '/',
      routes: {
        '/': (context) => login.LoginPage(),
        '/dashboard': (context) => dashboard.DashboardPage(),
      },
    );
  }
}
