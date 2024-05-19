import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CircularImages extends StatelessWidget {
  const CircularImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: const Row(children: [
          SizedBox(width: 5,),
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/yoga.png"),),
                        SizedBox(height: 5,),
          Text("Yoga"),
            ],
          ),
         SizedBox(width: 5,),
            Column(
              children: [
                CircleAvatar(radius: 50,
                backgroundImage: AssetImage("assets/gym.png"),),
                SizedBox(height: 5,),
                      Text("gym"),
              ],
            ),
             SizedBox(width: 5,),
            Column(
              children: [
                CircleAvatar(radius: 50,
                backgroundImage: AssetImage("assets/cardio.png"),),
                SizedBox(height: 5,),
                      Text("cardio"),
              ],
            ),
             SizedBox(width: 5,),
            Column(
              children: [
                CircleAvatar(radius: 50,
                backgroundImage: AssetImage("assets/streches.png"),),
                SizedBox(height: 5,),
                      Text("streches"),
              ],
            ),
             SizedBox(width: 5,),
            Column(
              children: [
                CircleAvatar(radius: 50,
                backgroundImage: AssetImage("assets/fullbody.png"),),
                SizedBox(height: 5,),
                      Text("Full Body"),
              ],
            ),
        ],),
      ),
    );
  }
}