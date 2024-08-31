// import 'package:flutter/material.dart';
// import 'package:senior_project/style/styled_text.dart';

// class PigrollWidget extends StatefulWidget {
//   //stateful don't need 'build' method
//   //createState()
//   const PigrollWidget({super.key});
//   @override
//   State<StatefulWidget> createState() {
//     return _pigrollState();
//   }
// }

// // ignore: camel_case_types
// class _pigrollState extends State<PigrollWidget> {
//   var activePigPath = 'assests/images/piggybank.png';
//   rollPig() {
//     setState(() {});
//     if (activePigPath == 'assests/images/piggybank.png') {
//       activePigPath = 'assests/images/piggybankrotate.png';
//     } else {
//       activePigPath = 'assests/images/piggybank.png';
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(mainAxisSize: MainAxisSize.min, children: [
//       const styledText('Piggy Pocket'),
//       Image.asset(activePigPath, width: 200),
//       const SizedBox(
//         height: 20,
//       ),
//       TextButton(
//           onPressed: rollPig,
//           style: TextButton.styleFrom(
//               padding: const EdgeInsets.only(
//                   top: 15, bottom: 15, left: 15, right: 15),
//               foregroundColor: const Color.fromARGB(221, 31, 45, 151),
//               textStyle: const TextStyle(fontSize: 24)),
//           child: const Text('button')),
//     ]);
//   }
// }
