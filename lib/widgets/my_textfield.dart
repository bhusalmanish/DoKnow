import 'package:doknow/constanst/my_colors.dart';
import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {
  final String hintText;
  const MyTextFeild({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: MyColor.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: MyColor.grey,
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ]),
      child: TextField(
        cursorRadius: const Radius.circular(10),
        decoration: InputDecoration(
          filled: true,
          fillColor: MyColor.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
