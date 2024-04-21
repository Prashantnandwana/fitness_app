import 'package:fitness/components/my_button.dart';
import 'package:fitness/components/my_textfield.dart';
import 'package:fitness/text/text_style.dart';
import 'package:fitness/text/text_typed.dart';
import 'package:flutter/material.dart';
class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});
final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("FORGOT PASSWORD", style: TextStyles.title,),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(MyText.resetcode,style: TextStyles.subtitle,),
              ],
            ),
            SizedBox(height: 80,),
            MyTextField(controller: emailController, text: MyText.em),
            SizedBox(height: 80,),
            MyButton(text: "RESET PASSWORD", color: Colors.lightGreen, onPressed: (){}),
            
          ],
        ),
      ),
    );
  }
}