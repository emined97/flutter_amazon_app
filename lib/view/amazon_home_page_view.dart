import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/widgets/bigcard.dart';
import 'package:amazon_app_clone/widgets/container_ball.dart';
import 'package:amazon_app_clone/widgets/firsatcard.dart';
import 'package:amazon_app_clone/widgets/line.dart';
import 'package:amazon_app_clone/widgets/promocard.dart';
import 'package:amazon_app_clone/widgets/smallcard.dart';
import 'package:amazon_app_clone/widgets/text_product.dart';
import 'package:amazon_app_clone/widgets/textverysmall.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Flexible(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.search, color: AmazonConst.colorBlack),
                      fillColor: AmazonConst.colorWhite,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      suffixIcon: Icon(Icons.center_focus_strong_outlined),
                      hintText: AmazonConst.textTextfield),
                ),
              ),
            )
          ],
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color>[
                  AmazonConst.colorAppbarGradientBeginTurqoise,
                  AmazonConst.colorAppbarGradientEndTurqoise
                ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LocationBar(),
            AmazonConst.sizedBoxheight15,
            _rowBalls(),
            AmazonConst.sizedBoxheight20,
            Line(),
            _rowBigCards(),
            _rowSmallCards(context),
            AmazonConst.sizedBoxheight5,
            _columnPromoCards(context),
            Line(),
            _firsat(context),
            Line(),
            PromoCard(
                widget: Image.asset(
              AmazonConst.imagePromoFive,
              fit: BoxFit.cover,
            )),
            Line(),
            AmazonConst.sizedBoxheight15,
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              color: AmazonConst.colorWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextProduct(
                      text: AmazonConst.textProductOne),
                  Image.asset(AmazonConst.imageProductOne),
                  Line(),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.8,
              width: MediaQuery.of(context).size.width,
              color: AmazonConst.colorWhite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextProduct(
                      text: AmazonConst.textProductTwo),
                  Image.asset(AmazonConst.imageProductTwo),
                  Line(),
               
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _firsat(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.3,
      width: MediaQuery.of(context).size.width,
      color: AmazonConst.colorFirsatContainer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AmazonConst.textFirsatTitle,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: AmazonConst.colorFirsatTitle
                  ),
            ),
            AmazonConst.sizedBoxheight15,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FirsatCard(
                      widget: Image.asset(
                    AmazonConst.imageFirsatOne,
                  )),
                  AmazonConst.sizedBoxWidth5,
                  FirsatCard(
                      widget: Image.asset(
                    AmazonConst.imageFirsatTwo,
                    height: 190.5,
                  )),
                  AmazonConst.sizedBoxWidth5,
                  FirsatCard(
                      widget: Image.asset(
                    AmazonConst.imageFirsatThree,
                    height: 191.5,
                  )),
                  AmazonConst.sizedBoxWidth5,
                  FirsatCard(
                      widget: Image.asset(
                    AmazonConst.imageFirsatFour,
                    height: 192,
                  )),
                  AmazonConst.sizedBoxWidth5,
                  FirsatCard(
                      widget: Image.asset(
                   AmazonConst.imageFirsatFive,
                    height: 192,
                  )),
                  AmazonConst.sizedBoxWidth5,
                  FirsatCard(
                      widget: Image.asset(
                    AmazonConst.imageFirsatSix,
                    height: 192,
                  )),
                  AmazonConst.sizedBoxWidth5,
                  FirsatCard(
                      widget: Image.asset(
                    AmazonConst.imageFirsatSeven,
                    height: 192,
                  )),
                  AmazonConst.sizedBoxWidth5,
                  FirsatCard(
                      widget: Image.asset(
                   AmazonConst.imageFirsatEight,
                    height: 192,
                  )),
                  AmazonConst.sizedBoxWidth5,
                ],
              ),
            ),
            AmazonConst.sizedBoxheight20,
            Text(AmazonConst.textFirsatInfo,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AmazonConst.colorFirsatInfo))
          ],
        ),
      ),
    );
  }

  Column _columnPromoCards(BuildContext context) {
    return Column(
      children: [
        PromoCard(
            widget: Image.asset(
          AmazonConst.imagePromoOne,
          fit: BoxFit.cover,
        )),
        Line(),
        PromoCard(
            widget: Image.asset(
          AmazonConst.imagePromoTwo,
          fit: BoxFit.cover,
        )),
        Line(),
        PromoCard(
            widget: Image.asset(
          AmazonConst.imagePromoThree,
          fit: BoxFit.cover,
        )),
        Line(),
        PromoCard(
            widget: Image.asset(
          AmazonConst.imagePromoFour,
          fit: BoxFit.cover,
        )),
      ],
    );
  }

  SingleChildScrollView _rowSmallCards(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4.6,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                  color: AmazonConst.colorWhite,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: AmazonConst.colorBlack)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hoş Geldiniz',style: Theme.of(context).textTheme.headline6?.copyWith(color: AmazonConst.colorBlack) ,),
                    AmazonConst.sizedBoxheight5,
                    Text('En iyi deneyim için kaydolun',style: Theme.of(context).textTheme.subtitle1?.copyWith(color: AmazonConst.colorBlack)),
                    AmazonConst.sizedBoxheight22,
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(style: ElevatedButton.styleFrom(primary: AmazonConst.colorAmber),
                            onPressed: () {},
                            child: Text('Güvenle oturum açın', style: TextStyle(color: AmazonConst.colorBlack),))),
                    AmazonConst.sizedBoxheight5,
                    Text('Hesap oluşturun',style: Theme.of(context).textTheme.subtitle1?.copyWith(color: AmazonConst.colorBlue800),)
                  ],
                ),
              ),
            ),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardOne,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorBlue),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardTwo,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardThree,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardFour,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardFive,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardSix,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardSeven,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorPurple),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardEight,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorBlue),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardNine,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardTen,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardEleven,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorOrange),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardTwelve,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardThirteen,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
            AmazonConst.sizedBoxWidth5,
            SmallCard(
                widget: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      AmazonConst.imageSmallCardFourteen,
                      fit: BoxFit.cover,
                    )),
                color: AmazonConst.colorFirsatInfo),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _rowBigCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BigCard(
              widget: Image.asset(
            AmazonConst.imageBigCardOne,
            fit: BoxFit.cover,
          )),
          BigCard(
            widget: Image.asset(
              AmazonConst.imageBigCardTwo,
              fit: BoxFit.cover,
            ),
          ),
          BigCard(
            widget: Image.asset(
              AmazonConst.imageBigCardThree,
              fit: BoxFit.cover,
            ),
          ),
          BigCard(
            widget: Image.asset(
              AmazonConst.imageBigCardFour,
              fit: BoxFit.cover,
            ),
          ),
          BigCard(
            widget: Image.asset(
              AmazonConst.imageBigCardFive,
              fit: BoxFit.cover,
            ),
          ),
          BigCard(
            widget: Image.asset(
              AmazonConst.imageBigCardSix,
              fit: BoxFit.cover,
            ),
          ),
          BigCard(
            widget: Image.asset(
              AmazonConst.imageBigCardSeven,
              fit: BoxFit.cover,
            ),
          ),
          BigCard(
            widget: Image.asset(
              AmazonConst.imageBigCardEight,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }

  Padding _rowBalls() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallOne,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallOne),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallTwo,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallTwo),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallThree,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallThree),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallFour,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallFour),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallFive,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallFive),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallSix,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallSix),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallSeven,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallSeven),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallEight,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallEight),
              ],
            ),
            AmazonConst.sizedBoxWidth5,
            Column(
              children: [
                ContainerBall(
                    widget: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image.asset(
                          AmazonConst.imageBallNine,
                          fit: BoxFit.cover,
                        ))),
                AmazonConst.sizedBoxheight5,
                TextVerySmall(text: AmazonConst.textBallNine),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LocationBar extends StatelessWidget {
  const LocationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 20,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: <Color>[
              Color.fromARGB(255, 201, 243, 237),
              Color.fromARGB(255, 134, 247, 245)
            ]),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            ),
            AmazonConst.sizedBoxWidth5,
            Text('Teslimat adresi: Sanliurfa 63500')
          ],
        ),
      ),
    );
  }
}
