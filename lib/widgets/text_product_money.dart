
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class TextProductMoney extends StatelessWidget {
  const TextProductMoney({
    Key? key, required this.text, required this.moneykrs,
  }) : super(key: key);
final String text;
final String moneykrs;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: Theme.of(context).textTheme.headline4?.copyWith(fontWeight: FontWeight.bold,color: AmazonConst.colorBlack),),
        Text(moneykrs,style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.black,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
