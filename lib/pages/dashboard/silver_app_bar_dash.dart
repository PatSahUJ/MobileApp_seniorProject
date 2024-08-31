import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:senior_project/pages/dashboard/silver_box_dash.dart';

class SilverAppBarDash extends StatelessWidget {
  SilverAppBarDash({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 0,
      pinned: true,
      floating: true,
      centerTitle: false,
      stretch: false,
      automaticallyImplyLeading: false,
      expandedHeight: 290,
      flexibleSpace: Stack(
        children: [
          Positioned(
              top: 15,
              right: 10,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    icon: Image.asset('asset/icons/loupe.png', width: 40),
                    onPressed: () {
                      // Define the action when search icon is pressed
                    },
                  ),
                  IconButton(
                    icon: Image.asset('asset/icons/setting.png', width: 40),
                    onPressed: () {
                      // Define the action when search icon is pressed
                    },
                  ),
                ],
              )),
          Positioned.fill(
              top: 80,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(79, 66, 66, 66),
                          blurRadius: 9,
                          spreadRadius: -2,
                          offset: Offset(0.0, -12.0),
                        )
                      ]),
                  child: SilverBoxDash()))
        ],
      ),
      //actions: <Widget>[],
    );
  }
}
