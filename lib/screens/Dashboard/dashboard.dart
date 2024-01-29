import 'package:doknow/constanst/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:velocity_x/velocity_x.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: MyColor.bgColor,
              child: Column(
                children: [
                  Container(
                    // padding: const EdgeInsets.all(20),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    color: MyColor.btnColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              AssetImage("assets/img/Profile_img.jpeg"),
                        ),
                        "Manish".text.size(18).bold.make(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 25, 0),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: "Good AfterNoon".text.size(20).bold.make()),
                  ),
                  const HeightBox(20),
                  // const AnalogClock.dark(
                  //   width: 200.0,
                  // )
                  const SizedBox(
                    height: 100,
                    child: AnalogClock.dark(),
                  ),

                  const HeightBox(30),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: "Task List".text.size(20).bold.make()),
                  ),

                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: MyColor.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              " Daily  Task".text.size(20).bold.make(),
                              const Spacer(),
                              const Icon(Icons.add_circle)
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  checkColor: MyColor.btnColor,
                                  activeColor: MyColor.btnColor,
                                  value: true,
                                  onChanged: (value) {}),
                              " WakeUP at 5 AM".text.size(16).make(),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  checkColor: MyColor.btnColor,
                                  activeColor: MyColor.btnColor,
                                  value: true,
                                  onChanged: (value) {}),
                              "Learn how to cook 1 pm".text.size(16).make(),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              "Have lunch  by 2 pm".text.size(16).make(),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(value: false, onChanged: (value) {}),
                              "Going To ground 4 pm".text.size(16).make(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ).pSymmetric(h: 25),
                ],
              ),
            ),
            Positioned(
              top: 0,
              height: 100,
              child: Image.asset(
                "assets/img/shape.png",
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
