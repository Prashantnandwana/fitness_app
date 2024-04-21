import 'package:fitness/register_login/register.dart/register.dart';
import 'package:fitness/onbord/onboardingpage_3.dart';
import 'package:fitness/onbord/onboardpage_1.dart';
import 'package:fitness/onbord/onboardpage_2.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
 final PageController _controller = PageController();
  bool onLastPage =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage =(index ==2);
              });
            },
        children:const  [
           Onboardpage1(),
           Onboardpage2(),
           Onboardpage3(),
     
        ],
    ),
    Container(
      alignment: const Alignment(0, 0.75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:  (context) =>  RegisterPage()));
            },
            child: const Text("Skip")),
          SmoothPageIndicator(controller: _controller, count: 3),
          onLastPage?
       GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:  (context) =>  RegisterPage()));
            },
            child: const Text("Done")) : GestureDetector(
            onTap: () {
              _controller.nextPage(duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
            },
            child:const  Text("Next")),
        ],
      )),
        ],
      )
    );
  }
}