import 'package:flutter/material.dart';
import 'package:senior_project/style/my_text_style.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  List<bool> _isExpandedList = List.generate(
      5, (_) => false); // To control the visibility of the list for each button

  // List of items
  final List<String> _items = ['Diet', 'Party'];
  final List<String> _emoji = ['🍔', '🍷'];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(5, (index) {
        // Generate 5 buttons
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpandedList[index] = !_isExpandedList[
                      index]; // Toggle the list visibility for each button
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                margin: const EdgeInsets.symmetric(
                    vertical: 4.0), // Add margin between buttons
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 239, 239, 239),
                  border: Border.all(
                      color: const Color.fromARGB(255, 192, 192, 192)),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(20, 0, 0, 0),
                      blurRadius: 4,
                      spreadRadius: 2,
                      offset: Offset(0, 4),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          _isExpandedList[index]
                              ? Icons.arrow_drop_up
                              : Icons.arrow_drop_down, // Arrow icon
                          color: const Color(0xffCD5334),
                        ),
                        const Text(
                          'Date dd/mm/2024', // Fixed text for the button
                          style: MyTextStyles.size14lightText,
                        ),
                      ],
                    ),
                    const Text(
                      'Expenses: ฿300', // Fixed text for the button
                      style: MyTextStyles.size14lightText,
                    ),
                  ],
                ),
              ),
            ),
            if (_isExpandedList[index])
              Container(
                margin: EdgeInsets.only(top: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(_items.length, (itemIndex) {
                    return Container(
                      margin: EdgeInsets.only(top: 4.0, bottom: 4.0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color.fromARGB(255, 173, 173, 173)),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(20, 0, 0, 0),
                            blurRadius: 4,
                            spreadRadius: 2,
                            offset: Offset(0, 4),
                          )
                        ],
                      ),
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 10.0),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Icon(
                                        Icons.close,
                                        size: 30,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(
                                            Theme.of(context).primaryColor.red,
                                            (Theme.of(context)
                                                        .primaryColor
                                                        .green +
                                                    31)
                                                .clamp(0, 255), // Adjust green
                                            (Theme.of(context)
                                                        .primaryColor
                                                        .blue +
                                                    95)
                                                .clamp(0, 255), // Adjust blue
                                            1.0),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  '${_emoji[itemIndex]}  ',
                                                  style:
                                                      TextStyle(fontSize: 45),
                                                ),
                                                Text(
                                                  '${_items[itemIndex]}',
                                                  style: MyTextStyles.heading2,
                                                ),
                                              ],
                                            ),
                                            Text(
                                              '-฿150',
                                              style: MyTextStyles.size20RedText,
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'Date : ',
                                              style:
                                                  MyTextStyles.size16GreyText,
                                            ),
                                            Text(
                                              '7/23/2024  11:45 PM',
                                              style:
                                                  MyTextStyles.size16BlackText,
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'Member : ',
                                              style:
                                                  MyTextStyles.size16GreyText,
                                            ),
                                            Text(
                                              'Myself',
                                              style:
                                                  MyTextStyles.size16BlackText,
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              'Comment : ',
                                              style:
                                                  MyTextStyles.size16GreyText,
                                            ),
                                            Text(
                                              'Lunch at Sizzler!',
                                              style:
                                                  MyTextStyles.size16BlackText,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              _emoji[itemIndex],
                              style: const TextStyle(fontSize: 40),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 1, // Width of the vertical divider
                              height: 50, // Height of the vertical divider
                              color: Color.fromARGB(255, 174, 174,
                                  174), // Color of the vertical divider
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _items[itemIndex],
                                        style: MyTextStyles.size16BlackText,
                                      ),
                                      const SizedBox(height: 5),
                                      const Text(
                                        'Myself',
                                        style: MyTextStyles.smallText,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '-฿150',
                                        style: MyTextStyles.size16RedText,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '08:32 PM',
                                        style: MyTextStyles.smallText,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
          ],
        );
      }),
    );
  }
}
