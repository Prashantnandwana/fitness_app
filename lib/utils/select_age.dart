import 'package:fitness/utils/eligible_age.dart';
import 'package:flutter/material.dart';
class SelectAge extends StatefulWidget {
  const SelectAge({super.key});

  @override
  State<SelectAge> createState() => _SelectAgeState();
}

class _SelectAgeState extends State<SelectAge> {
  late FixedExtentScrollController ageController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ageController=FixedExtentScrollController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView.useDelegate(     
        controller: ageController,
      itemExtent: 50, 
     perspective: 0.01,
      diameterRatio: 1.5,
      physics: FixedExtentScrollPhysics(),
      childDelegate: ListWheelChildBuilderDelegate(
        childCount: 101,
        builder: (context, index) {
        return EligibleAge(
          age: index,
        );
      },),),
    );
  }
}