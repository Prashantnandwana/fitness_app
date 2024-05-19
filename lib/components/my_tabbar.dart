import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    late TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          SizedBox( height: 50,),
          Text("Call managaer"),
          SizedBox(height: 10,),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 5,
              child: Container(decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.orange,
                   ),
                   controller: tabController, 
                   isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(horizontal: 30),
                    tabs: [
                      Tab(child: Text("missed1",style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("missed2",style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("missed3",style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("missed4",style: TextStyle(color: Colors.black),),),
                      Tab(child: Text("missed5",style: TextStyle(color: Colors.black),),),
                    ],
              ),
              ),
          ),
          SizedBox(height: 50,
            child: TabBarView(
              controller: tabController,
              children: [
                Container(color: Colors.amber,),
                Text("data2"),
                Text("data3"),
                Text("data4"),
                Text("data5"),
              ],
            ),
          )

        ],
      ),
    );
  }
}





























// import 'package:flutter/material.dart';


// class MyTabBar extends StatelessWidget {
//   const MyTabBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Weight Converter'),
//           backgroundColor: Colors.grey,
//           bottom: TabBar(
//             tabs: [
//               Tab(text: 'lbs'),
//               Tab(text: 'kg'),
//             ],
//             indicatorColor: Colors.white,
//             labelColor: Colors.white,
//             unselectedLabelColor: Colors.grey,
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             Center(child: Text('Content for lbs tab')),
//             Center(child: Text('Content for kg tab')),
//           ],
//         ),
//       ),
//     );
//   }
// }




























// // class MyTabBar extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 2, // Number of tabs
// //       child: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Weight Converter'),
// //           bottom: TabBar(
// //             tabs: [
// //               Tab(text: 'lbs'), // First tab
// //               Tab(text: 'kg'), // Second tab
// //             ],
            
            
// //             labelColor: Colors.grey, // Color of the selected tab text
// //             unselectedLabelColor: Colors.grey, // Color of unselected tab text
            
// //           ),
// //         ),
// //         body: TabBarView(
// //           children: [
// //             // Content for the "lbs" tab
// //             Center(child: Text('Content for lbs tab')),
// //             // Content for the "kg" tab
// //             Center(child: Text('Content for kg tab')),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }









// // import 'package:flutter/material.dart';
// // class MyTabBar extends StatefulWidget {
// //   const MyTabBar({super.key});

// //   @override
// //   State<MyTabBar> createState() => _MyTabBarState();
// // }

// // class _MyTabBarState extends State<MyTabBar>  with TickerProviderStateMixin{
// //   @override
// //   Widget build(BuildContext context) {
// //     TabController tabController = TabController(length: 2, vsync: this);
// //     return Scaffold(
// //       body:Column(
// //         children: [
// //         const  SizedBox(
// //           height: 10,
// //           ),
// //           Card(
// //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
// //             elevation: 5,
// //             child: Container(
// //               padding: EdgeInsets.all(8),
// //               decoration: BoxDecoration(
// //                 color: Colors.black.withOpacity(0.1),
// //                 borderRadius: BorderRadius.circular(8),
// //               ),
// //               child: TabBar( 
// //                 indicator:BoxDecoration(
                  
// //                   //borderRadius: BorderRadius.circular(8),
// //                   color: Colors.white,
// //                 ) ,
// //                 controller: tabController,
// //                // isScrollable: true,
// //                labelPadding: const  EdgeInsets.all(5),

// //                 tabs: const  [
// //                   Center(child: Tab(child: Text("LBS"),)),
// //                    Center(child: Tab(child: Text("KG"),)),
                  
// //                 ]),
// //             ),
// //           ),
// //           Expanded(child: TabBarView(
// //             controller: tabController,
// //             children:  const 
// //           [
           
// //           ]))
// //         ],
// //       )
// //     );
// //   }
// // }