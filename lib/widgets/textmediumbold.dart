import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';


class TextMediumBold extends StatelessWidget {
  const TextMediumBold({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color:AmazonConst.colorBlack,fontWeight: FontWeight.w400),
                      textAlign: TextAlign.left,
                    );}}