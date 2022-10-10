
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/view/amazon_suggest.dart';
import 'package:flutter/material.dart';

class CardDesignTextImage extends StatelessWidget {
  const CardDesignTextImage({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text;
  final String image;

  @override
  final double _sizedHeight = 190;
  final double _sizedWidth = 170;
  final double _ImageHeightWidth = 100;

  final double _cardPositionedTop = 110;
  final double _containerColorHeight = 3;
  final double _containerColorWidth = 2.3;
  final double _positionedImageLeft = 35;
  final double _positionedImageTop = 75;
  final double _positionedTextLeft = 10;
  final double _positionedTextTop = 10;

  Widget build(BuildContext context) {
    return SizedBox(
      height: _sizedHeight,
      width: _sizedWidth,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AmazonSuggets(),
              ));
        },
        child: Card(
          color: AmazonConst.colorWhite,
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: AmazonConst.borderRadiusCircular10),
          child: Stack(
            children: [
              Positioned(
                top: _cardPositionedTop,
                child: Container(
                  height: MediaQuery.of(context).size.height /
                      _containerColorHeight,
                  width:
                      MediaQuery.of(context).size.width / _containerColorWidth,
                  decoration: BoxDecoration(
                      color: AmazonConst.colorCategoryCont,
                      borderRadius: BorderRadius.only(
                          topLeft: AmazonConst.radius70,
                          topRight: AmazonConst.radius70)),
                ),
              ),
              Positioned(
                top: _positionedImageTop,
                left: _positionedImageLeft,
                child: Image.asset(
                  image,
                  height: _ImageHeightWidth,
                  width: _ImageHeightWidth,
                ),
              ),
              Positioned(
                  top: _positionedTextTop,
                  left: _positionedTextLeft,
                  child: Text(
                    text,
                    style: TextStyle(
                        color: AmazonConst.colorBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
