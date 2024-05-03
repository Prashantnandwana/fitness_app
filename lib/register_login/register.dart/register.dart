import 'package:fitness/components/my_button.dart';
import 'package:fitness/components/my_textfield.dart';
import 'package:fitness/register_login/login.dart';
import 'package:fitness/text/text_style.dart';
import 'package:fitness/text/text_typed.dart';
import 'package:flutter/material.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController      =TextEditingController();
  final TextEditingController phoneController     =TextEditingController();
  final TextEditingController emailController     =TextEditingController();
  final TextEditingController passwordController  =TextEditingController();

  void goToLogin(){
    Navigator.push(context, MaterialPageRoute(builder:(context) => Login(),));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(MyText.createaccounts, style: TextStyles.title,),
                ],
              ),  
        const      Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(MyText.pleaseeyctp),
                ],
              ),
             MyTextField(controller: nameController, text: MyText.fn),
             MyTextField(controller: phoneController, text: MyText.ph),
             MyTextField(controller: emailController, text: MyText.em),
             MyTextField(controller: passwordController, text: MyText.pw),
            const  SizedBox(height: 20,),
            
             MyButton(text: MyText.createac,color: Colors.green,onPressed: (){
              
              
             },),
              const  Text(MyText.orregwith),
             MyButton(text: MyText.connectwgoogle, color: Colors.grey.shade200, onPressed: (){}, icon: Icons.mail,),
           
             MyButton(text: MyText.connectwfb, color: Colors.blue, onPressed: (){},icon: Icons.facebook,),
            const  SizedBox(height: 20,),
             Row(mainAxisAlignment: MainAxisAlignment.center,
               children: [
                const  Text(MyText.already),
                 GestureDetector(
                  onTap: goToLogin,
                  child:const  Text("Login!")),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }
}