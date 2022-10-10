import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  const BigCard({super.key, required this.widget});
   final Widget widget;
  @override
final double height=3.6;

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height /height,
      width: MediaQuery.of(context).size.width,
      child: widget);
  }
}