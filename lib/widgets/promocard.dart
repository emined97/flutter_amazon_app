import 'package:flutter/material.dart';

class PromoCard extends StatelessWidget {
  const PromoCard({super.key, required this.widget});
final double height=13;
final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width,
              child: widget,
            );
  }
}