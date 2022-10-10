import 'package:flutter/material.dart';

class ContainerBall extends StatelessWidget {
  const ContainerBall({super.key, required this.widget});
   final Widget widget;
   final double height=12;
final double width=5.5;
  @override
  Widget build(BuildContext context) {
    return   Container(
            height: MediaQuery.of(context).size.height /height,
            width: MediaQuery.of(context).size.width / width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            child: widget);
  }
}