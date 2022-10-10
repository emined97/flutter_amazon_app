import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/widgets/container_elevatedbutton.dart';
import 'package:amazon_app_clone/widgets/textmediumbold.dart';
import 'package:flutter/material.dart';

class PersonPageView extends StatelessWidget {
  const PersonPageView({super.key});
  final double appbarheight=7;
final double imageheight=120;
final double imagewidth=100;
final double listimageheight=110;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmazonConst.colorWhite,
      body:  Column(
        children: [
          _appBar(context),
          AmazonConst.sizedBoxheight20,
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0),
                  child: Column(
                    children: [
                      _title(context),
                   AmazonConst.sizedBoxheight30,
                  Column(
                    children: [
                      _elevatedbuttons(),
                       _rowBox(),
                    _rowBag(),
                    AmazonConst.sizedBoxheight22,
                    _rowList(),
                    ],
                  ),
                
                
                    ],
                  ),
                ),
                
        ],
      ),
      
    );
  }

  Container _appBar(BuildContext context) {
    return Container(
              height: MediaQuery.of(context).size.height /appbarheight,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [AmazonConst.colorAppbarTurqoise,
                    AmazonConst.colorAppbarTurqoise,
                  
                ],
                begin: Alignment.topCenter,
              ),
              boxShadow: [BoxShadow(color:AmazonConst.colorAppbarTurqoise,blurRadius: 4000,spreadRadius: 35 )]
              ),
          child: Padding(
            padding: const EdgeInsets.only(top: 37, left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AmazonConst.imageAppbar,
                  width: 90,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_none,
                          color: AmazonConst.colorBlack,
                        )),
                    IconButton(onPressed: () {}, icon: Icon(Icons.search))
                  ],
                )
              ],
            ),
          ),
        );
  }

  Row _rowList() {
    return Row(
                  children: [
                    Image.asset(
                      AmazonConst.imageList,
                      height: listimageheight,
                      width: imagewidth,
                    ),
                    const TextMediumBold(text: AmazonConst.textList,)
                  ],
                );
  }

  Row _rowBag() {
    return Row(
                  children: [
                    Image.asset(
                      AmazonConst.imageBag,
                      height: imageheight,
                      width: imagewidth,
                    ),
                    const TextMediumBold(text: AmazonConst.textBag,)
                  ],
                                );
  }

  Row _rowBox() {
    return Row(
                  children: [
                    Image.asset(
                      AmazonConst.imageBox,
                      height:imageheight,
                      width: imagewidth,
                    ),
                   const TextMediumBold(text: AmazonConst.textBox)
                  ],
                );
  }

  Column _elevatedbuttons() {
    return Column(
                      children: [
                         const ContainerElevatedbutton(text: AmazonConst.textOrangeElevatedb, color: AmazonConst.colorOrangeElevatedb),
                           SizedBox(
                  height: 10,
                ),
                const ContainerElevatedbutton(text: AmazonConst.textGreyElevatedb, color: AmazonConst.colorGreyElevatedb),
                SizedBox(
                  height: 10,
                ),

                      ],
                    );
  }

  Text _title(BuildContext context) {
    return Text(
                      AmazonConst.textTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: AmazonConst.colorBlack),
                      textAlign: TextAlign.center,
                    );
  }
}


