import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';


class TextProduct extends StatelessWidget {
  const TextProduct({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
    );
  }
}
