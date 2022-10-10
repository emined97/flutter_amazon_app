
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:flutter/material.dart';

class StackBookDesignContainerText extends StatelessWidget {
  const StackBookDesignContainerText({
    Key? key,
    required this.image,
    required this.text,
    required this.textpuan,
    required this.textfiyat,
  }) : super(key: key);

  final String image;
  final String text;
  final String textpuan;
  final String textfiyat;

  @override
  final double _containerHeight = 3;
  final double _containerWidth = 2;
  final double _imageHeight = 6;
  final double _imageWidth = 3;
  final double _positionedTop = 10;
  final double _positionedRight = 30;
  final double _positionedBottom = 5;

  Widget build(BuildContext context) {
    return Stack(
      children: [
        _stackContainer(context),
        Positioned(
          top: _positionedTop,
          right: _positionedRight,
          child: _stackImage(context),
        ),
        Positioned(
          bottom: _positionedBottom,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _stackColumnText(),
              Row(
                children: [
                  _iconFiveStar(),
                  _iconFiveStar(),
                  _iconFiveStar(),
                  _iconFiveStar(),
                  _iconFiveStar(),
                  AmazonConst.sizedBoxWidht5,
                  Text(textpuan)
                ],
              ),
              _stackColumnMany(),
              AmazonConst.sizedBoxHeight20,
              _stackColumnTextCampany(),
            ],
          ),
        )
      ],
    );
  }

  Text _stackColumnTextCampany() {
    return Text(
      AmazonConst.textIndirim,
      style: TextStyle(
          color: AmazonConst.colorGreenTwo, fontWeight: FontWeight.bold),
    );
  }

  Text _stackColumnMany() {
    return Text(textfiyat,
        style: TextStyle(
            color: AmazonConst.colorBlack,
            fontWeight: FontWeight.bold,
            fontSize: 19));
  }

  Icon _iconFiveStar() {
    return Icon(
      Icons.star,
      color: AmazonConst.colorOrange,
      size: 18,
    );
  }

  Text _stackColumnText() {
    return Text(
      text,
      style: TextStyle(color: AmazonConst.colorBlack),
    );
  }

  Image _stackImage(BuildContext context) {
    return Image.asset(
      image,
      height: MediaQuery.of(context).size.height / _imageHeight,
      width: MediaQuery.of(context).size.width / _imageWidth,
    );
  }

  Container _stackContainer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / _containerHeight,
      width: MediaQuery.of(context).size.width / _containerWidth,
      decoration: BoxDecoration(
        color: AmazonConst.colorWhite,
      ),
    );
  }
}
