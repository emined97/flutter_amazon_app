
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class AppbarCommonAmazon extends StatelessWidget {
  const AppbarCommonAmazon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
    title:Row(children: [

       SizedBox(width: 10,),
       Flexible(child: TextField(
        decoration: InputDecoration(
          prefixIcon:
              Icon(Icons.search, color: AmazonConst.colorBlack),
          fillColor: AmazonConst.colorWhite,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: AmazonConst.borderRadiusCircular10),
                suffixIcon: Icon(Icons.camera_enhance),
         
          hintText: AmazonConst.appbarTextFieldHintext
        
        ),
      ),)
        
    ],),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: <Color>[ Color.fromARGB(255, 168, 252, 255),Color.fromARGB(255, 105, 211, 211)]),
          
      ),
    
    ),
  );
  }
}