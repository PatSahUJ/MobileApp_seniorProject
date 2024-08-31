import 'package:flutter/material.dart';
import 'package:senior_project/pages/expense/silver_app_bar_ex.dart';

class ExpensePage extends StatefulWidget {
  ExpensePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _expensePageState();
  }
}

class _expensePageState extends State<ExpensePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: CustomScrollView(slivers: [
          SilverAppBarEx(),
          //SilverIncomeDetail()
        ]));
  }
}
