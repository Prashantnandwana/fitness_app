import 'package:fitness/text/text_style.dart';
import 'package:flutter/material.dart';

class GridImages extends StatelessWidget {
  GridImages({super.key});

  List myImageList = [
    "running.png",
    "walking.png",
    "meal_plan.png",
    "cycling.png",
    "yoga.png",
    "health.png"
  ];
  List myTextList = [
    "running.png",
    "walking.png",
    "meal plan.png",
    "cycling.png",
    "yoga.png",
    "health.png"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
        itemCount: myImageList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Column(mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(myImageList[index]),
              Text(myTextList[index]),
            ],
          );
        },
      );
  }
}
