import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';


class ContainerElevatedbutton extends StatelessWidget {
  const ContainerElevatedbutton({
    Key? key, required this.text, required this.color,
  }) : super(key: key);
  final String text;
  final Color color;
  final double containerheight=20;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      border: Border.all(width: 1.5,color: AmazonConst.colorBlack)),
      height: MediaQuery.of(context).size.height / containerheight,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(           
            backgroundColor: MaterialStateProperty.all(color),
          ),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: AmazonConst.colorBlack),
            textAlign: TextAlign.center,
          )),
    );
  }
}