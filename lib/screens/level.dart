import 'package:flutter/material.dart';

class DifficultyLevel extends StatefulWidget {
  const DifficultyLevel ({super.key});

  @override
  State<DifficultyLevel> createState() => _DifficultyLevelState();
}

class _DifficultyLevelState extends State<DifficultyLevel> {
  int _selectedIndex = -1; // -1 represents no selection initially

  void _onButtonPressed(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Difficulty Level'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            GestureDetector(onTap: () => _onButtonPressed(0),
              child: Container(
                height: 50,
                width: 450,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  color: _selectedIndex == 0 ? Colors.black : Colors.white,
                ),
                child: Center(child: Text("BEGINNER",style: TextStyle(color:_selectedIndex == 0 ? Colors.white : Colors.black, ),)),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(onTap: () => _onButtonPressed(1),
              child: Container(
                height: 50,
                width: 450,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  color: _selectedIndex == 1 ? Colors.black : Colors.white,
                ),
                child: Center(child: Text("INTERMEDIATE",style: TextStyle(color:_selectedIndex == 1 ? Colors.white : Colors.black, ),)),
              ),
            ),
            const SizedBox(height: 20),
             GestureDetector(onTap: () => _onButtonPressed(2),
                child: Container(
                height: 50,
                width: 450,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                  color: _selectedIndex == 2 ? Colors.black : Colors.white,
                ),
                child: Center(child: Text("ADVANCED",style: TextStyle(color:_selectedIndex == 2 ? Colors.white : Colors.black, ),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}























// import 'package:fitness/components/my_button.dart';
// import 'package:fitness/text/text_style.dart';
// import 'package:flutter/material.dart';

// class Level  extends StatefulWidget {
//   const Level ({super.key});

//   @override
//   State<Level> createState() => _LevelState();
// }

// class _LevelState extends State<Level> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//       children: [
//         Text("Step 7 of 8"),
//         Text("WHAT'S YOUR FITNESS LEVEL?",style: TextStyles.title,),
//         MyButton(color: Colors.white, text: "Beginner",onPressed: (){

//         },),
//       ],
//     ),
//     );
//   }
// }