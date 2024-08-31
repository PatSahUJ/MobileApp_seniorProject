import 'package:flutter/material.dart';
import 'package:senior_project/pages/income/silver_app_bar_in.dart';
import 'package:senior_project/pages/income/silver_income_detail.dart';

class IncomePage extends StatefulWidget {
  IncomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _incomePageState();
  }
}

class _incomePageState extends State<IncomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: CustomScrollView(
            slivers: [SilverAppBarIn(), SilverIncomeDetail()]));
  }
}
