import 'package:fitness/components/my_tabbar.dart';
import 'package:fitness/screens/home_page.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget { 
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentindex =0;
  final screens =[
     HomePage(),
     MyTabBar(),
     HomePage(),
     HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffffff),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentindex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Hpme"),
         BottomNavigationBarItem(icon: Icon(Icons.food_bank),label: "Meals Plan"),
          BottomNavigationBarItem(icon: Icon(Icons.hardware),label: "Exercise"),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ],
      onTap: (index){
        setState(() {
          currentindex=index;
        });
      },
      ),
    );
  }
}