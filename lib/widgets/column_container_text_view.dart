
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class ColumnBorderradiusContainerText extends StatelessWidget {
  const ColumnBorderradiusContainerText({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(
            color: AmazonConst.colorTurqois,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              topRight: Radius.circular(70),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        AmazonConst.sizedBoxHeight10,
        Text(
          text,
          style: TextStyle(
              color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
