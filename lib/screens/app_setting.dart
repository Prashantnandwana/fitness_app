import 'package:flutter/material.dart';

class AppSetting extends StatelessWidget {
  const AppSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      // appBar: AppBar(),
      body: SizedBox(width: 360,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                  Text(
                    "APP SETTING",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: "BebasNeue",
                        fontWeight: FontWeight.w400,
                        color: Color(0xff191919)),
                  ),
                  SizedBox(
                    width: 50,
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 320,
                height: 230,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.copy_all),SizedBox(width: 10,),
                            Text(
                              "Reminder",
                              style: TextStyle(
                                  //  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff191919)),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
