import 'dart:ui';

import 'package:fitness/text/text_style.dart';
import 'package:fitness/utils/bld_tabs.dart';
import 'package:fitness/utils/calander.dart';
import 'package:fitness/utils/image_text_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPlan extends StatelessWidget {
  const MealPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFC),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "MEAL PLAN",
          style: GoogleFonts.bebasNeue(
            // textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        actions: [
          const Icon(Icons.filter),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RotatedBox(
                      quarterTurns: 1,
                      child: Icon(
                        Icons.expand_more,
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Text("February",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600, fontSize: 14)),
                  SizedBox(
                    width: 20,
                  ),
                  RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        Icons.expand_more,
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Text("2022",
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xff3A4750))),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Calander(
                        date: "20",
                        day: "Sun",
                        isSelected: true,
                      ),
                      Calander(
                        date: "21",
                        day: "Mon",
                        isSelected: false,
                      ),
                      Calander(
                        date: "22",
                        day: "Tue",
                        isSelected: false,
                      ),
                      Calander(
                        date: "23",
                        day: "Wed",
                        isSelected: false,
                      ),
                      Calander(
                        date: "24",
                        day: "Thu",
                        isSelected: false,
                      ),
                      Calander(
                        date: "25",
                        day: "Fri",
                        isSelected: false,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              BLDtabs(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "15 meals",
                  style: GoogleFonts.montserrat(
                      color: Color(0xff303841),
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
              ),
              ImageContainer(
                  imagePath: "assets/imggreenbeans.png",
                  text: "Green beans, tomatoes, eggs",
                  textwithdivider: "135 kcal   |   30 min"),
                
              ImageContainer(
                  imagePath:
                      "assets/healthybalanced.png",
                  text: " Healthy balanced vegetarian food",
                  textwithdivider: "135 kcal   |   30 min"),
                  ImageContainer(imagePath: "assets/imganotheriimage.png", text: "imganotheriimage", textwithdivider: "135 kcal   |   30 min")
            ],
          ),
        ),
      ),
    );
  }
}
