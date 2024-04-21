import 'package:flutter/material.dart';
class Onboardpage1 extends StatelessWidget {
  const Onboardpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const  BoxDecoration(
         gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                // Colors.blue,
                // Colors.red, 
                 Color(0xFFF1CA58), 
                 Color(0xFFFFFFFF), 
                 Color(0xFFFFFFFF),  
                 Color(0xFFFFFFFF),
                 Color(0xFFF1CA58),                 
                 Color(0xFFFF805E),
              ],
              
            )
          ),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset("all.png"),
                ),
               const  SizedBox(height: 50,),
                RichText(
                 text: const TextSpan(
                style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
                children:  <TextSpan>[
                           TextSpan(text: '     PERFECT BODY \n DOING '),
                            TextSpan(
                             text: '  CROSSFIT\n ',
                            style: TextStyle(
                             fontWeight: FontWeight.bold, color: Color(0xFFB0C929)),
                               ),
                             TextSpan(text: '      EXERCISES '),
            ])),
        
    
              const   SizedBox(height: 200,)
            ],
          )    
          );
  }
}