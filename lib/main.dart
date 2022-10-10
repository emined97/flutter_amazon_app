import 'package:amazon_app_clone/view/amazon_info_app.dart';
import 'package:amazon_app_clone/view/amazon_product_view.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home:  InfoAmazon()
    );
  }
}
