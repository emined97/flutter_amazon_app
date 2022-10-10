import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key, required this.widget, required this.color});
final Widget widget;
final Color color;
   final double height=4.6;
final double width=3;
  @override
  Widget build(BuildContext context) {
    return Container(
       height: MediaQuery.of(context).size.height / height,
                      width: MediaQuery.of(context).size.width / width,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 3, color: color)),
      child: widget);
  }
}