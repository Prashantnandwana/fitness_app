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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void goToLogin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Login(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfcfc),
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    MyText.createaccounts,
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 30),
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    MyText.pleaseeyctp,
                    style: TextStyle(
                        fontFamily: "DMSans",
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              MyTextField(controller: nameController, text: MyText.fn),
              MyTextField(controller: phoneController, text: MyText.ph),
              MyTextField(controller: emailController, text: MyText.em),
              MyTextField(controller: passwordController, text: MyText.pw),
              const SizedBox(
                height: 20,
              ),
              MyButton(
                text: MyText.createac,
                color: Color(0xffB0C929),
                onPressed: () {},
              ),
              SizedBox(
                height: 10,
              ),
              const Text(MyText.orregwith),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 55,
                width: 318,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Color(0xff696969), width: 0.2),
                  color: Color(0xffF5F5F5),
                ),
                child: Row(
                  children: [
                    Icon(Icons.mail_outline),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Connect with Google",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff303841)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              MyButton(
                text: MyText.connectwfb,
                color: Color(0xff4267B2),
                onPressed: () {},
                icon: Icons.facebook, 
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(MyText.already),
                  GestureDetector(
                      onTap: goToLogin, child: const Text("Login!")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
