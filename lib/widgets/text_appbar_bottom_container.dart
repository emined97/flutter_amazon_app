
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class AppBarBottomContainerText extends StatelessWidget {
  const AppBarBottomContainerText({
    Key? key, required this.text, required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: color));
  }
}
