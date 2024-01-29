import 'package:doknow/constanst/my_colors.dart';
import 'package:doknow/screens/spalsh_screen/Signin/signin.dart';
import 'package:doknow/widgets/my_button.dart';
import 'package:doknow/widgets/my_textfield.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                "Welcome OnBoard!".text.bold.size(20).make(),
                const HeightBox(20),
                "Let’s help you to meet your tasks".text.size(16).make(),
                const HeightBox(80),
                const MyTextFeild(hintText: "Enter Your Full Name"),
                const HeightBox(20),
                const MyTextFeild(hintText: "Enter Your Email Address"),
                const HeightBox(20),
                const MyTextFeild(hintText: "Enter Your Password"),
                const HeightBox(20),
                const MyTextFeild(hintText: "Enter Confirm Password"),
                const HeightBox(60),
                const MyButton(title: "Register", routepage: SignInPage()),
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
