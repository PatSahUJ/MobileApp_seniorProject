import 'package:flutter/material.dart';
import 'package:senior_project/style/my_text_style.dart';

class TotInEx extends StatefulWidget {
  const TotInEx({super.key});
  @override
  State<StatefulWidget> createState() {
    return _totiInExState();
  }
}

class _totiInExState extends State<TotInEx> {
  int tot = 1000;
  int income = 2500;
  int pickedYear = DateTime.now().year;
  int expense = 1500;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  '฿$tot',
                  style: MyTextStyles.mediumBoldBlackText,
                ),
                SizedBox(height: 10),
                Text(
                  'Total',
                  style: MyTextStyles.size16GreyText,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '฿$income',
                  style: MyTextStyles.mediumBoldGreenText,
                ),
                SizedBox(height: 10),
                Text(
                  'Income',
                  style: MyTextStyles.size16GreyText,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  '฿$expense',
                  style: MyTextStyles.mediumBoldRedText,
                ),
                SizedBox(height: 10),
                Text(
                  'Expense',
                  style: MyTextStyles.size16GreyText,
                ),
              ],
            ),
          ],
        ),
        Divider(
            height: 20,
            thickness: 1,
            color: Color.fromARGB(255, 109, 109, 109)),
      ],
    );
  }
}
