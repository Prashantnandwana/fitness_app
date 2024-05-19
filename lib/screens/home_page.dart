import 'package:fitness/components/circular_image.dart';
import 'package:fitness/components/my_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/appbarimage.png'),
            fit: BoxFit.cover,
          )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Expanded(
          child: ListView(
            children: [
              Image.asset("assets/containerasimage.png"),
              const Row(
                children: [
                  Text(
                    "SELECT YOUR GOAL",
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 18),
                  ),
                ],
              ),
              // Expanded(child: ListView(children: [MyTabBar()])),
              // ButtonBar(
              //   alignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     ElevatedButton(onPressed: () {}, child: const Text("data")),
              //     ElevatedButton(onPressed: () {}, child: const Text("data")),
              //     ElevatedButton(onPressed: () {}, child: const Text("data")),
              //     ElevatedButton(onPressed: () {}, child: const Text("data")),
              //   ],
              // ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CATEGORY",
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 22),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const CircularImages(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "POPULAR EXERCISES",
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 22),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Image.asset("assets/full_shot.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Full Shot Woman Stretching Arm",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Beginer      |    30 min",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              Image.asset("assets/looking.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Athlete Practicing Monochrome",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Beginer      |    50 min",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 10,
                    fontWeight: FontWeight.w500),
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "MEAL PLANS",
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 22),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Image.asset("assets/imgmeals.png"),
              const Text(
                "Greek salad with lettuce, green onion,",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              const Text(
                "150 kcal",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    color: Color(0xFF191919)),
              ),
              const Divider(),
              Image.asset("assets/imgsalad.png"),
              const Text(
                "Salad of fresh vegetables,",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              ),
              const Text(
                "270 kcal",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w900,
                    fontSize: 10,
                    color: Color(0xFF191919)),
              ),
              const Divider(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ADDITIONAL EXERCISES",
                    style: TextStyle(fontFamily: "BebasNeue", fontSize: 22),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/jumpingrop.png",
                    width: 120,
                  ),
                  SizedBox(
                    width: 152,
                    height: 76,
                    child: const Column(
                      children: [
                        Text(
                          "Exercises with Jumping  Rope",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              color: Color(0xFF191919),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "110 kcal   |   10 min",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 10,
                              fontWeight: FontWeight.w500),
                        ),
                        Text("Beginner"),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
