
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/view/amazon_product_view.dart';
import 'package:amazon_app_clone/widgets/column_container_text_view.dart';
import 'package:amazon_app_clone/widgets/stack_book_design_container_view.dart';
import 'package:flutter/material.dart';

class AmazonSuggets extends StatefulWidget {
   AmazonSuggets({Key? key}) : super(key: key);

double _indent =5;
double _endindent =5;
double _tickness =1;
double _widht =2;
double _widht20 =20;

  @override
  State<AmazonSuggets> createState() => _AmazonSuggetsState();
}

class _AmazonSuggetsState extends State<AmazonSuggets> {
  dynamic drodownvalues = " Fiyat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmazonConst.colorWhite,
      appBar: _appbarRowIconTextfield(),
      body: Padding(
        padding: AmazonConst.paddingSuggestyOnly,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AmazonConst.sizedBoxHeight10,
              _columnTextSoru(context),
              AmazonConst.sizedBoxHeight20,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: _rowModaKategori(),
              ),
              AmazonConst.sizedBoxHeight30,
              _rowTextOneri(context),
              AmazonConst.sizedBoxHeight20,
              Row(
                children: [
                  _rowDropdownButton(),
                  AmazonConst.sizedBoxWidht10,
                  _rowTextButton(),
                ],
              ),
              AmazonConst.sizedBoxHeight10,
              _dividerOne(),
              IntrinsicHeight(
                child: _rowCategoriHediyelerBir(),
              ),
              _dividerOne(),
              IntrinsicHeight(
                child: _rowCategoryHediyelerIki(),
              ),
              _dividerOne(),
              IntrinsicHeight(
                child: _rowCategoryHediyelerUc(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Divider _dividerOne() {
    return Divider(
      color: Colors.grey,
      indent: 5,
      endIndent: 5,
      thickness: 1,
    );
  }

  TextButton _rowTextButton() {
    return TextButton(
        style: TextButton.styleFrom(
            side: BorderSide(
          width: 2,
          color: AmazonConst.colorGrey,
        )),
        onPressed: () {},
        child: Text(AmazonConst.textFirsat, style: TextStyle(fontSize: 20,color: AmazonConst.colorGreen)));
  }

  DecoratedBox _rowDropdownButton() {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: AmazonConst.borderRadiusCircular10,
            border: Border.all(color: AmazonConst.colorGrey, width: 2)),
        child: DropdownButton(
            value: drodownvalues,
            icon: Icon(Icons.arrow_drop_down_outlined),
            elevation: 10,
            items: [" Fiyat", " Artan", " Azalan", " Fırsat"]
                .map((dynamic value) => DropdownMenuItem(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AmazonConst.colorGreen,
                            fontSize: 18),
                      ),
                    ))
                .toList(),
            onChanged: (newmenu) {
              setState(() {
                drodownvalues = newmenu!;
              });
            }));
  }

  Text _rowTextOneri(BuildContext context) {
    return Text(AmazonConst.suggestOneri,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: AmazonConst.colorBlack, fontWeight: FontWeight.bold));
  }

  Row _rowCategoryHediyelerUc() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              StackBookDesignContainerText(
                  image: AmazonConst.imageMonopoly,
                  text: AmazonConst.textMonopoly,
                  textpuan: AmazonConst.textPuanMonopoly,
                  textfiyat: AmazonConst.textFiyatMonopoly),
            ],
          ),
        ),
        VerticalDivider(
          color: Colors.grey,
          indent: 5,
          thickness: 1,
          width: 20,
        ),
        Expanded(
          child: Column(
            children: [
              StackBookDesignContainerText(
                  image: AmazonConst.imageIcimizdekiseytan,
                  text: AmazonConst.textIcimizdekiseytan,
                  textpuan: AmazonConst.textPuanIcimizdekis,
                  textfiyat: AmazonConst.textFiyatIcimizdekis),
            ],
          ),
        ),
      ],
    );
  }

  Row _rowCategoryHediyelerIki() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail(),));
              },
                child: StackBookDesignContainerText(
                    image: AmazonConst.bookImageOne,
                    text: AmazonConst.bookTittleCategory,
                    textpuan: AmazonConst.textPuanDogununl,
                    textfiyat: AmazonConst.textFiyatDogununl),
              ),
            ],
          ),
        ),
        VerticalDivider(
          color: Colors.grey,
          indent: 5,
          thickness: 1,
          width: 20,
        ),
        Expanded(
          child: Column(
            children: [
              StackBookDesignContainerText(
                  image: AmazonConst.imageKuyucakliyusuf,
                  text: AmazonConst.textKuyucakliyusuf,
                  textpuan: AmazonConst.textPuanKuyucakliy,
                  textfiyat: AmazonConst.textFiyatKuyucakliy),
            ],
          ),
        ),
      ],
    );
  }

  Row _rowCategoriHediyelerBir() {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              StackBookDesignContainerText(
                  image: AmazonConst.imageNutuk,
                  text: AmazonConst.textNutuk,
                  textpuan: AmazonConst.textPuanNtk,
                  textfiyat: AmazonConst.textFiyatNtk),
            ],
          ),
        ),
        VerticalDivider(
          color: Colors.grey,
          indent: 5,
          thickness: 1,
          width: 20,
        ),
        Expanded(
          child: Column(
            children: [
              StackBookDesignContainerText(
                  image: AmazonConst.imageSineklerint,
                  text: AmazonConst.textSineklerint,
                  textpuan: AmazonConst.textPuanSt,
                  textfiyat: AmazonConst.textFiyatSt),
            ],
          ),
        ),
      ],
    );
  }

  Row _rowModaKategori() {
    return Row(
      children: [
        ColumnBorderradiusContainerText(
            image: AmazonConst.imageHerkes, text: AmazonConst.textHerkes),
        AmazonConst.sizedBoxWidht10,
        ColumnBorderradiusContainerText(
            image: AmazonConst.imageKadin, text: AmazonConst.textKadin),
        AmazonConst.sizedBoxWidht10,
        ColumnBorderradiusContainerText(
            image: AmazonConst.imageErkek, text: AmazonConst.textErkek),
        AmazonConst.sizedBoxWidht10,
        ColumnBorderradiusContainerText(
            image: AmazonConst.imageGencler, text: AmazonConst.textGencler),
        AmazonConst.sizedBoxWidht10,
        ColumnBorderradiusContainerText(
            image: AmazonConst.imageSekizOnYas,
            text: AmazonConst.textSekizOnyas),
        AmazonConst.sizedBoxWidht10,
        ColumnBorderradiusContainerText(
            image: AmazonConst.imageDortYediyas,
            text: AmazonConst.textDortYediyas),
        AmazonConst.sizedBoxWidht10,
        ColumnBorderradiusContainerText(
            image: AmazonConst.imageBebek, text: AmazonConst.textBebek),
      ],
    );
  }

  Text _columnTextSoru(BuildContext context) {
    return Text(AmazonConst.suggestSoruBir,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: AmazonConst.colorBlack, fontWeight: FontWeight.bold));
  }

  AppBar _appbarRowIconTextfield() {
    return AppBar(
      backgroundColor: AmazonConst.colorTurqois,
      title: Row(
        children: [
          Flexible(
              child: TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: AmazonConst.colorBlack,
                ),
                fillColor: AmazonConst.colorWhite,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: AmazonConst.borderRadiusCircular10),
                suffixIcon: Icon(Icons.camera_enhance),
                hintText: AmazonConst.appbarTextFieldHintext),
          )),
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              AmazonConst.colorTransAppbar,
              AmazonConst.colorTransAppbarTwo,
            ])),
      ),
    );
  }
}
