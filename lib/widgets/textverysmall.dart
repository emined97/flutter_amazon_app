import 'package:flutter/material.dart';

class TextVerySmall extends StatelessWidget {
  const TextVerySmall({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
                      text,
                      style: Theme.of(context)
                          .textTheme
                          .button
                          ?.copyWith(color: Color.fromARGB(255, 160, 158, 158),fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    );}}
  