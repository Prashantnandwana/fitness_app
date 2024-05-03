import 'package:fitness/components/my_tabbar.dart';
import 'package:fitness/components/my_toggle_button.dart';
import 'package:fitness/text/text_style.dart';
import 'package:flutter/material.dart';
class Weight extends StatefulWidget {
  const Weight({super.key});

  @override
  State<Weight> createState() => _WeightState();
}


class _WeightState extends State<Weight> {
  double _weightKg  =60.0;
void _convertToLbs(){
setState(() {
  _weightKg=_weightKg*2.20462;
});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text("Skip")
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Center(child: MyTabBar())),
          Text("Step 4 of 8"),
          Text("HOW MUCH DO YOU WEIGHT?",style: TextStyles.title,),
          Center(
            child: Container(width: 100,
            height: 50,
              decoration: BoxDecoration(
            
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("LBS"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("KG"),
                  ),
                ],
              ),
            ),
          ),
          Text("$_weightKg kg",),          
          ElevatedButton(onPressed: _convertToLbs, child: Text("Convert to Lbs")),
         // MyTabBar(),
           
        ],
      
      ),
      

    );
  }
}