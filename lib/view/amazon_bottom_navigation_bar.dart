import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/view/amazon_category.dart';
import 'package:amazon_app_clone/view/amazon_home_page_view.dart';
import 'package:amazon_app_clone/view/amazon_login_view.dart';
import 'package:amazon_app_clone/view/amazon_person_page_view.dart';

import 'package:flutter/material.dart';



class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({super.key});

  @override
  State<BottomNavigationBarView> createState() => _BottomNavigationsBarState();
}

class _BottomNavigationsBarState extends State<BottomNavigationBarView> {
int _selectedIndex = 0;

List<Widget> _bottomList =[
 HomePage(),
 PersonPageView(),
 AmazonLogin(),
AmazonCategory(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(iconSize: 30 ,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AmazonConst.colorBlue800,
      unselectedItemColor:AmazonConst.colorBlack,
currentIndex: _selectedIndex,
onTap: (int index) {
  setState(() {
    _selectedIndex = index;
  });
  
},

       items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: ' '),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: ' '),
               BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: ' '),
              BottomNavigationBarItem(icon: Icon(Icons.menu),label: ' '),
      ]),
      body: _bottomList.elementAt(_selectedIndex),
    );
  }
}