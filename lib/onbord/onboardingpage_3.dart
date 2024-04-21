import 'package:flutter/material.dart';
class Onboardpage3 extends StatelessWidget {
  const Onboardpage3({super.key});

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
                 Color(0xFFFF805E),                   
                 Color(0xFFFFFFFF),  
                 Color(0xFFFFFFFF), 
                 Color(0xFFFFFFFF), 
                 Color(0xFFFF805E),
              ],
              
            )
          ),
          child: Column(
            children: [
              const  SizedBox(height: 50,),
              Expanded(
                flex: 2,
                child: Image.asset("intro3.png"),
                ),
               const  SizedBox(height: 50,),
                RichText(
                 text: const TextSpan(
                style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold),
                children:  <TextSpan>[
                           TextSpan(text: 'HEALTHY MUSCULAR \n '),
                            TextSpan(
                             text: '  SPORTSWOMAN\n ',
                            style: TextStyle(
                             fontWeight: FontWeight.bold, color: Color(0xFFB0C929)),
                               ),
                             TextSpan(text: '       STANDING '),
            ])),
        
              //  Text("PERFECT BODY \n DOING CROSSFIT\n EXERCISES"),
               const  SizedBox(height: 200,)
            ],
          )    
          );
  }
}