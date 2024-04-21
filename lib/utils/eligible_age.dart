import 'package:flutter/material.dart';
class EligibleAge extends StatelessWidget {
 final int age;
   const EligibleAge({super.key, required this.age, });


  @override
  Widget build(BuildContext context) {
    return Text(age.toString(),style: const  TextStyle(fontSize: 30),);
  }
}