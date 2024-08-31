import 'package:flutter/material.dart';
import 'package:senior_project/style/my_text_style.dart';

class ExpenseBar extends StatelessWidget {
  ExpenseBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
          child: Container(
              padding: EdgeInsets.only(left: 12),
              child: Icon(
                Icons.close,
                color: Theme.of(context).primaryColor,
                size: 30,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Color(0xffCD5334),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    '💸Expense ',
                    style: MyTextStyles.size18WhiteText,
                  )),
            ),
            Container(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/income');
                  },
                  child: const Text(
                    '💰',
                    style: MyTextStyles.size20BlackText,
                  )),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  '🏖️',
                  style: MyTextStyles.size20BlackText,
                )),
          ],
        ),
      ],
    );
  }
}
