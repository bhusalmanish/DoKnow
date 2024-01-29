import 'package:doknow/constanst/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Widget routepage;

  const MyButton({super.key, required this.title, required this.routepage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(MyColor.btnColor)),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => routepage));
          },
          child: title.text.size(20).color(MyColor.black).bold.make()),
    );
  }
}
