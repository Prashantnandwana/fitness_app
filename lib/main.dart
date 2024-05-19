import 'package:fitness/components/my_bottom_navigation_bar.dart';
import 'package:fitness/onbord/splash.dart';
import 'package:fitness/screens/home_page.dart';
import 'package:fitness/screens/meal_plam.dart';
import 'package:fitness/utils/bld_tabs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       home: MealPlan(),
          // initialRoute: '/',
      routes: {
        "MyBottom€navigationBar": (context) => MyBottomNavigationBar(),
        "MealPlan": (context) => MealPlan(),
        
      },
      );
  }
}