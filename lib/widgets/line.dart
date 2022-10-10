import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';


class Line extends StatelessWidget {
  const Line({super.key});
final double height=150;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / height,
      width: MediaQuery.of(context).size.width,
      color: AmazonConst.colorLine,
    );
  }
}