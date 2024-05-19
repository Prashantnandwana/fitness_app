import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;
  IconData? icon;

   MyButton({
    super.key,    
    required this.text,
    required this.color,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 55,
        width: 318,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6),
        color: color,
      ),
        child: Row(children: [
          Icon(icon),
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(text,style: TextStyle(fontFamily: "BebasNeue",fontSize: 22,fontWeight: FontWeight.w400,color: Colors.white),),
              ],
            ),
          )
        ],),
      ),
    );
  }
}



//  SizedBox(width: 500,
//     height: 50,
//       child: TextButton(
//         onPressed: onPressed,
//         style: ElevatedButton.styleFrom(
//           backgroundColor: color,
          
//         ),
//         child: Text(text),
//       ),
//     );