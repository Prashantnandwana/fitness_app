import 'package:flutter/material.dart';
class EligibleAge extends StatelessWidget {
 final int age;
   EligibleAge({super.key, required this.age, });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(age.toString(),style: TextStyle(fontSize: 30),),
    );
  }
}