import 'dart:async';

import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/view/amazon_bottom_navigation_bar.dart';
import 'package:amazon_app_clone/view/amazon_product_view.dart';
import 'package:flutter/material.dart';

class InfoAmazon extends StatefulWidget {
  const InfoAmazon({super.key});

  @override
  State<InfoAmazon> createState() => _InfoAmazonState();
}

class _InfoAmazonState extends State<InfoAmazon>with TickerProviderStateMixin {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationBarView(),));
    },);
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AmazonConst.amazonInfoLogo,width: MediaQuery.of(context).size.width,)
          ],
        ),
      ),
    );
  }
}