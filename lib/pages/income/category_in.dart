import 'package:flutter/material.dart';
import 'package:senior_project/style/my_text_style.dart';

class CatagoryIn extends StatefulWidget {
  const CatagoryIn({super.key});
  @override
  State<StatefulWidget> createState() {
    return _catagoryInState();
  }
}

class _catagoryInState extends State<CatagoryIn> {
  final List<Map<String, String>> categories = [
    {'name': 'Transfer', 'icon': '💸'},
    {'name': 'Dad', 'icon': '👨‍👧'},
    {'name': 'Investment', 'icon': '📈'},
    {'name': 'Salary', 'icon': '💰'},
    {'name': 'plus', 'icon': '💰'},
  ];
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded; // Toggle the expanded state
              });
            },
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 239, 239, 239),
                border:
                    Border.all(color: const Color.fromARGB(255, 192, 192, 192)),
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: const Color(0xffCD5334),
                  ),
                  const Text('Category', style: MyTextStyles.size18BlackText),
                ],
              ),
            ),
          ),
          if (_isExpanded)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  shrinkWrap:
                      true, // Allows the GridView to take only the space it needs
                  physics:
                      const NeverScrollableScrollPhysics(), // Disable scrolling to prevent overflow
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (context, index) {
                    return Container(
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              categories[index]['icon'] ?? '',
                              style: const TextStyle(fontSize: 30),
                            ),
                            Text(
                              categories[index]['name'] ?? '',
                              style: MyTextStyles.size14lightText,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            margin: const EdgeInsets.symmetric(vertical: 4.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 239, 239, 239),
              border:
                  Border.all(color: const Color.fromARGB(255, 192, 192, 192)),
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
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('Information', style: MyTextStyles.size18BlackText),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Row(
              children: [
                const Padding(
                  padding: const EdgeInsets.only(right: 10), // Adjust alignment
                  child: Text(
                    '📆',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    //textAlign: TextAlign.right,
                    keyboardType: TextInputType.datetime,
                    style: MyTextStyles.size16GreyText,
                    decoration: const InputDecoration(
                      hintText: 'Date',
                      hintStyle: MyTextStyles.size16GreyText,
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: Row(
              children: [
                const Padding(
                  padding: const EdgeInsets.only(right: 10), // Adjust alignment
                  child: Text(
                    '📝',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    //textAlign: TextAlign.right,
                    keyboardType: TextInputType.multiline,
                    style: MyTextStyles.size16GreyText,
                    decoration: const InputDecoration(
                      hintText: 'Comment',
                      hintStyle: MyTextStyles.size16GreyText,
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
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15)),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: MyTextStyles.size20BlackText,
              ),
            ),
          )
        ],
      ),
    );
  }
}
