
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class TabbarAndTabbarView extends StatelessWidget {
   TabbarAndTabbarView({
    Key? key,
    required TabController tabController,
    required List<Widget> tabbarView,
    required List<Tab> tabBarList,
  }) : _tabController = tabController, _tabbarView = tabbarView, _tabBarList = tabBarList, super(key: key);

  final TabController _tabController;
  final List<Widget> _tabbarView;
  final List<Tab> _tabBarList;
  double _tabbarViewWidht =1.1;
  double _tabbarViewHeight =2;
  double _left =0;
  double _right =0;
  double _bottom =0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Stack(
      children: [
       SizedBox(width: MediaQuery.of(context).size.width /_tabbarViewWidht,
  height: MediaQuery.of(context).size.height /_tabbarViewHeight,
    child: TabBarView(
      controller: _tabController,
      children: _tabbarView),
  ),
  Positioned(
    right: _right,
    child: CircleAvatar(child: Icon(Icons.share), backgroundColor: AmazonConst.colorTransparentLittle,  foregroundColor: AmazonConst.colorBlack,)),

     Positioned(
    left:_left,
    bottom: _bottom,
    child: CircleAvatar(child: Icon(Icons.favorite_border_outlined),backgroundColor: AmazonConst.colorTransparentLittle,foregroundColor: AmazonConst.colorBlack,)),
   
      ],
     ),
  Center(
    child: TabPageSelector(controller: _tabController,selectedColor: AmazonConst.colorBlack,)
      
  )
      ],
    );
  }
}
