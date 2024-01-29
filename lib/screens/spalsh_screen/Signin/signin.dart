import 'package:doknow/constanst/my_colors.dart';
import 'package:doknow/screens/Dashboard/dashboard.dart';
import 'package:doknow/widgets/my_button.dart';
import 'package:doknow/widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            color: MyColor.bgColor,
            child: Column(
              children: [
                const Spacer(),
                "Welcome Back!".text.bold.size(20).make(),
                const HeightBox(20),
                "Let’s help you to meet your tasks".text.size(16).make(),
                const HeightBox(20),
                Image.asset(
                  "assets/img/login_img.png",
                  height: 200,
                  width: 200,
                ),
                const HeightBox(20),
                const MyTextFeild(hintText: "Enter Your Email Address"),
                const HeightBox(20),
                const MyTextFeild(hintText: "Enter Your Password"),
                const HeightBox(20),
                const MyButton(title: "Login", routepage: Dashboard()),
                const HeightBox(20),
                "Already have an account ? sign in".text.size(18).make(),
                const Spacer(),
              ],
            ).pSymmetric(h: 30),
          ),
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
