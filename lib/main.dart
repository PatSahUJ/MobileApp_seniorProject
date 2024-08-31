import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:senior_project/pages/expense/expense_page.dart';
import 'package:senior_project/pages/income/income_page.dart';
import 'package:senior_project/pages/login.dart';
import 'package:senior_project/pages/dashboard/dashboard.dart';
import 'package:senior_project/pages/signup.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: const Color(0xffFFC145),
      ),
      home: const Scaffold(body: Login()),
      routes: {
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
        '/dashboard': (context) => const Dashboard(),
        '/income': (context) => IncomePage(),
        '/expense': (context) => ExpensePage()
      },
    );
  }
}
