// import 'package:flutter/material.dart';
// class MyToggleButton extends StatefulWidget {
//   final String text1;
//   final String text2;
//   const MyToggleButton({super.key, required this.text1, required this.text2});

//   @override
//   State<MyToggleButton> createState() => _MyToggleButtonState();
// }

// class _MyToggleButtonState extends State<MyToggleButton> {
//   List<bool> isSelected=[
//  false,
//  false,
//   ];
//   @override
//   Widget build(BuildContext context) {
    
//     return Center(
//       child: ToggleButtons(
//         fillColor: Colors.grey,
//         selectedColor: Colors.white,
//         onPressed: (int index){
//           setState(() {
//             isSelected[index]=!isSelected[index];
//           });
//         },
//         isSelected: isSelected,
//         children: [
//           Text(widget.text1),
//         Text(widget.text2),
//         ],
//       ),
//     );
//   }
// }