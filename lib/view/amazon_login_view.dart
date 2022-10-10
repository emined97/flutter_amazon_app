import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/widgets/text_extra_product_page_title.dart';
import 'package:amazon_app_clone/widgets/text_product_page_title.dart';
import 'package:flutter/material.dart';

class AmazonLogin extends StatelessWidget {
   AmazonLogin({super.key});
 final _EdgeInsetsall8 = EdgeInsets.all(8);
 final _EdgeInsetsonly =EdgeInsets.only(left: 5,right: 5,top: 100);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: _EdgeInsetsonly,
        child: Column(
          children: [
            Image.asset(AmazonConst.amazonInfoLogo,width: MediaQuery.of(context).size.width /1.5,),
            AmazonConst.sizedBoxHeight30,
            _amazonLogInTitle(),
                 AmazonConst.sizedBoxHeight30,
               _amazonLogInContext(),
              _amazonLogInElevatedButton()             ],
        ),
      ),
    );
  }

  Center _amazonLogInTitle() => Center(child: TextExtraProductPageTitle(text: AmazonConst.girisYap, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold));

  Column _amazonLogInContext() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 TextExtraProductPageTitle(text: AmazonConst.istekListesi, color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
                 AmazonConst.sizedBoxHeight20,
                  TextExtraProductPageTitle(text: AmazonConst.siparisBulma, color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
                         AmazonConst.sizedBoxHeight20,
                     TextExtraProductPageTitle(text: AmazonConst.alisverisTakip, color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
                      AmazonConst.sizedBoxHeight30,          
              ],
             );
  }

  Column _amazonLogInElevatedButton() {
    return Column(
              children: [
                 ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(side: BorderSide(color:AmazonConst.colorBlack),primary: AmazonConst.colorAmber),
              child: Center(child: TextProductPageTitle(text: AmazonConst.musteriler, color: AmazonConst.colorBlack, fontWeight: FontWeight.normal))),  
                           AmazonConst.sizedBoxHeight10,
                           ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(side: BorderSide(color: AmazonConst.colorBlack),primary: AmazonConst.colorLightGrey),
              child: Center(child: Center(child: Padding(
                padding: _EdgeInsetsall8,
                child: TextProductPageTitle(text: AmazonConst.yeniKullanici, color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
              )))),  
                              AmazonConst.sizedBoxHeight10,
                             ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(side: BorderSide(color: AmazonConst.colorBlack),primary: AmazonConst.colorLightGrey),
              child: Center(child: Center(child: TextProductPageTitle(text: AmazonConst.girisiAtla, color: AmazonConst.colorBlack, fontWeight: FontWeight.normal)))),  
 
              ],
            );
  }
}