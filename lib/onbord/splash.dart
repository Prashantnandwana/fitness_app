import 'dart:async';

import 'package:fitness/onbord/onbording_screen.dart';
import 'package:flutter/material.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  OnbordingScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("splash.png",fit: BoxFit.fill,),
    );
  }
}