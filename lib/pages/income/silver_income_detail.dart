import 'package:flutter/material.dart';
import 'package:senior_project/pages/income/category_in.dart';
import 'package:senior_project/style/my_text_style.dart';

class SilverIncomeDetail extends StatelessWidget {
  const SilverIncomeDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(height: 30),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      keyboardType: TextInputType.number,
                      style: MyTextStyles.size16GreyText,
                      decoration: const InputDecoration(
                        hintText: 'How much?',
                        hintStyle: MyTextStyles.size20GreyText,
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey, // Color of the underline
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .grey, // Color of the underline when the field is not focused
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors
                                .grey, // Color of the underline when the field is focused
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 5), // Adjust alignment
                    child: Text(
                      '฿',
                      style: MyTextStyles.heading1,
                    ),
                  ),
                ],
              )),
          CatagoryIn(),
        ],
      ),
    );
  }
}
