import 'package:fitness/components/my_button.dart';
import 'package:fitness/utils/grid_images.dart';
import 'package:fitness/text/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class SelectYourFavorite extends StatelessWidget {
  const SelectYourFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Text("Skip")],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Step 1 of 8"),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 12),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("SELECT YOUR FAVORITE",style: TextStyles.title,),
              ],
            ),
          ),
          Expanded(child: GridImages()),
          MyButton(text: "NEXT STEP", color: Colors.green, onPressed: (){}),

        ],
      ),
    );
  }
}