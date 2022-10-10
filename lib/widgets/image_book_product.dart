
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class ImageBookProduct extends StatelessWidget {
  const ImageBookProduct({
    Key? key, required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return     Image.asset(image,width: MediaQuery.of(context).size.width ,height: MediaQuery.of(context).size.height/2.2,);
  }
}