import 'package:fitness/components/my_button.dart';
import 'package:fitness/components/my_textfield.dart';
import 'package:fitness/register_login/forgot_password.dart';
import 'package:fitness/screens/how_old_are_you.dart';
import 'package:fitness/screens/level.dart';

import 'package:fitness/screens/select_your_favorite.dart';
import 'package:fitness/screens/weight.dart';
import 'package:fitness/text/text_style.dart';
import 'package:fitness/text/text_typed.dart';

import 'package:flutter/material.dart';
class Login extends StatelessWidget {
   Login({super.key});
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(MyText.welcometpf,style: TextStyles.title,),
                 ],
               ),
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text(MyText.hellotsitc,style: TextStyles.subtitle,),
                 ],
                ),
              const  SizedBox(height: 20,),
              MyTextField(controller: emailController, text: MyText.em),
              MyTextField(controller: passwordController, text: MyText.pw),
             Row(mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword(),));
                  },
                  child: const  Text("Forget Password?")),
               ],
             ),
           const  SizedBox(height: 20,),
             MyButton(text: "LOGIN", color: Colors.green, onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const   SelectYourFavorite(),));
             }),
             const Text("Or Login with"),
             MyButton(text: MyText.connectwgoogle, color: Colors.grey.shade200, onPressed: (){}, icon: Icons.mail,),
             MyButton(text: MyText.connectwfb, color: Colors.blue, onPressed: (){},icon: Icons.facebook,),
            const SizedBox(height: 50,),
             Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const  Text("Don't have an account?"),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => 
                const DifficultyLevel()
           //     RegisterPage()
                ,)),
                child:  Text("Register",style: TextStyles.subtitle,))
                 
                ],
            )
              
            ],
          ),
        ),
      ),
    );
  }
}