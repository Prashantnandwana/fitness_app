import 'package:fitness/components/my_button.dart';
import 'package:fitness/text/text_style.dart';
import 'package:fitness/utils/select_age.dart';
import 'package:flutter/material.dart';
class HowOld extends StatelessWidget {
  const HowOld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const  [Text("Skip")],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
           const   Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Step 3 of 8"),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("HOW OLD ARE YOU?", style: TextStyles.title,),
              ],
            ),
           const   Expanded(child: SelectAge()),
            MyButton(text: "NEXT STEPS", color: Colors.green, onPressed: (){})
          ],
        ),
      ),
    );
  }
}