
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/widgets/text_product_page_title.dart';
import 'package:flutter/material.dart';

class SizedBoxCardProductNameMoney extends StatelessWidget {
  const SizedBoxCardProductNameMoney({
    Key? key, required this.type, required this.money, 
  }) : super(key: key);
final String type;
final String money;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height /10,
     child: Card(shape: RoundedRectangleBorder(side: BorderSide(color:AmazonConst.colorOrange ,width: 4)),
     color: AmazonConst.colorOrange50,
     child: Center(
       child: Column(mainAxisAlignment: MainAxisAlignment.center,
         children: [
           TextProductPageTitle(text: type, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
            TextProductPageTitle(text: money, color: AmazonConst.colorRed, fontWeight: FontWeight.bold),
            AmazonConst.sizedBoxHeight10,
            
         ],
       ),
     ),
     ));
  }
}
