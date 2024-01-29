import 'package:doknow/constanst/my_colors.dart';
import 'package:doknow/screens/SignUp/signup.dart';
import 'package:doknow/widgets/my_button.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyColor.bgColor,
        child: Stack(children: [
          Column(
            children: [
              const Spacer(),

              Image.asset(
                "assets/img/splash_icon.png",
                height: 200,
                width: 200,
              ),

              // SvgPicture.asset(
              //   "assets/img/man-person-icon.svg",
              //   height: 100,
              //   width: 100,
              //   semanticsLabel: "Splash icon",
              // ),

              const SizedBox(
                height: 40,
              ),

              "Gets things done with T0Do".text.size(20).bold.make(),
              const SizedBox(
                height: 40,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    )),
                child:
                    " Streamline your day with our intuitive todo app, seamlessly organizing tasks and boosting productivity. Your ultimate tool for efficient task management"
                        .text
                        .size(18)
                        .make(),
              ),
              const HeightBox(40),
              const MyButton(title: "Get Started", routepage: SignUpPage()),

              const Spacer(),
            ],
          ).pSymmetric(h: 30),
          Positioned(
            top: 0,
            height: 100,
            child: Image.asset(
              "assets/img/shape.png",
              height: 100,
            ),
          ),
        ]),
      ),
    );
  }
}

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Center(child: Text("Onboard Page"))],
      ),
    );
  }
}
