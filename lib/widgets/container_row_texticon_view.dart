
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class ContainerRowTextIcon extends StatelessWidget {
  const ContainerRowTextIcon({
    Key? key,
    required this.text,
    this.image = '',
    required this.icon,
  }) : super(key: key);

  final String text;
  final String image;
  final IconData icon;

  @override
  final double _containerrHeight = 18;
  final double _containerrWidth = 1.1;
  final double _containerImgHeight = 32;
  final double _containerImgWidth = 12;

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _containerrHeight,
      width: MediaQuery.of(context).size.width / _containerrWidth,
      decoration: BoxDecoration(
        border: Border.all(color: AmazonConst.colorBlack),
        color: AmazonConst.colorWhite,
        borderRadius: AmazonConst.borderRadiusCircular10,
      ),
      child: Padding(
        padding: AmazonConst.paddingCategoryOnlyThre,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                _rowCategoryText(),
                AmazonConst.sizedBoxWidht10,
                _rowCategoryFlag(context),
              ],
            ),
            _rowCategoryIcon()
          ],
        ),
      ),
    );
  }

  Icon _rowCategoryIcon() {
    return Icon(
      icon,
      size: 30,
      color: AmazonConst.colorBlack,
    );
  }

  Container _rowCategoryFlag(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _containerImgHeight,
      width: MediaQuery.of(context).size.width / _containerImgWidth,
      decoration: BoxDecoration(
        color: AmazonConst.colorWhite,
        borderRadius: AmazonConst.borderRadiusCircular10,
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }

  Text _rowCategoryText() {
    return Text(
      text,
      style: TextStyle(
          color: AmazonConst.colorBlack,
          fontSize: 15,
          fontWeight: FontWeight.bold),
    );
  }
}
