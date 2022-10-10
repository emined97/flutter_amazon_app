
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class TextExtraProductPageTitle extends StatelessWidget {
  const TextExtraProductPageTitle({
    Key? key, required this.text, required this.color, required this.fontWeight,
  }) : super(key: key);
final String text;
final Color color;
final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline6?.copyWith(fontWeight: fontWeight,color: color),);
  }
}
