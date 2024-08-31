import 'package:flutter/material.dart';
import 'package:senior_project/style/my_text_style.dart';

class IncomeBar extends StatelessWidget {
  const IncomeBar({super.key});
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
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/expense');
                },
                child: const Text(
                  '💸',
                  style: MyTextStyles.size20BlackText,
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                  color: Color.fromARGB(185, 21, 190, 187),
                  borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    '💰Income ',
                    style: MyTextStyles.size18BlackText,
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
