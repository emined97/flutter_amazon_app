
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/widgets/appbar_common_amazon.dart';
import 'package:amazon_app_clone/widgets/icon_tabbar.dart';
import 'package:amazon_app_clone/widgets/image_book_product.dart';
import 'package:amazon_app_clone/widgets/sizedbox_card_product_type_money.dart';
import 'package:amazon_app_clone/widgets/tabbar_view.dart';
import 'package:amazon_app_clone/widgets/text_appbar_bottom_container.dart';
import 'package:amazon_app_clone/widgets/text_product_page_title.dart';
import 'package:amazon_app_clone/widgets/text_product_promo_container.dart';
import 'package:flutter/material.dart';

import '../widgets/text_extra_product_page_title.dart';
import '../widgets/text_product_money.dart';

class ProductDetail extends StatefulWidget {
   const ProductDetail({super.key});



  @override
  State<ProductDetail> createState() => _ProductDetailState();
}double _amazonLogoWidht = 6;
double _promoContainerWidht = 1.1;
double _promoContainerHeight = 14;
  double _appbarPreferredSize = 70;
  double _appbarBottomContainerHeight = 20;
  double _elevatedButtonHeight =14;
  double _dividetTickness =5;
  double _dividerHeight =30;

class _ProductDetailState extends State<ProductDetail> with TickerProviderStateMixin {
  late final TabController _tabController;
  static List<Tab> _tabBarList = [
    Tab(
      child:  IconTabbar(),
    ),
    Tab(
      child:  IconTabbar(),
    ),
    Tab(
      child:   IconTabbar(),
    ),
    Tab(
      child:  IconTabbar(),
    ),
    Tab(
      child:  IconTabbar(),
    ),
   
  ];
List<String> _items =['adet: 1','adet: 2','adet: 3','adet 4'];
String? _selectedItem = 'adet: 1';
  static List<Widget> _tabbarView = [
Center(child: ImageBookProduct(image: AmazonConst.bookImageOne,)),
Center(child: ImageBookProduct(image: AmazonConst.bookImageTwo)),
Center(child:ImageBookProduct(image: AmazonConst.bookImageThree,)),
Center(child:ImageBookProduct(image: AmazonConst.bookImageFour,)),
Center(child:ImageBookProduct(image: AmazonConst.bookImageFive,)),

  ];
  @override
  void initState() {
    super.initState();
    _tabController= TabController(length: _tabBarList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  appBar: PreferredSize(
     preferredSize: Size.fromHeight(_appbarPreferredSize),
    child: const AppbarCommonAmazon(),
  ),
  body: SingleChildScrollView(
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      _containerAppbarBottom(context),
        Center(child: _ContainerProductPromo(context)),
       AmazonConst.sizedBoxHeight20,
        Padding(
          padding: AmazonConst.edgeInsetsOnlyRightLeft10,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             _bookTittleBlue(),
             AmazonConst.sizedBoxHeight5,
            TextExtraProductPageTitle(text: AmazonConst.bookTitleBig, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold,),
            _rowBookStarPoint(),
           TabbarAndTabbarView(tabController: _tabController, tabbarView: _tabbarView, tabBarList: _tabBarList),
           AmazonConst.sizedBoxHeight10,
           SizedBoxCardProductNameMoney(type: AmazonConst.productType, money: AmazonConst.productMoney),
              _contextAndDropdown(),
              AmazonConst.sizedBoxHeight10,
              _sizedBoxElevatedButton(context),
               AmazonConst.sizedBoxHeight10,
                _sizedBoxElevatedButtonTwo(context),
                AmazonConst.sizedBoxHeight10,
                _amazonGuvenliISlemIConText(),
                AmazonConst.sizedBoxHeight10,
                _amazonGuvenliIslemRichText(context),
                AmazonConst.sizedBoxHeight10,
                _amazonGuvenliIslemTitle(),
                 ],
          ),
        ),
        _divider(),
        _paddingAmazonDigerSatici(),
        _divider(),
      _columnContainerIconText(context),
        _divider(),
  
  
        
      ],
    ),
  ),
  );
  }

  Column _columnContainerIconText(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AmazonConst.edgeInsetsOnlyRightLeft10,
          child: Container(width: MediaQuery.of(context).size.width /10,
          height: MediaQuery.of(context).size.height /20,
       
          decoration: BoxDecoration(borderRadius: AmazonConst.borderRadiusCircular25, color: AmazonConst.colorLightGrey,),
          child: ClipRRect(borderRadius: AmazonConst.borderRadiusCircular25,
            child: Image.asset(AmazonConst.lockIMage,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height,
            ),
          ),
          ),
          
        ),
           AmazonConst.sizedBoxHeight10,
        Padding(
          padding: AmazonConst.edgeInsetsOnlyRightLeft10,
        
        child: AppBarBottomContainerText(text: AmazonConst.guvenliIslem, color: AmazonConst.colorBlue800)
       
          )
        
          
        
      ],
    );
  }

  Padding _paddingAmazonDigerSatici() {
    return Padding(
        padding: AmazonConst.edgeInsetsOnlyRightLeft10,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextExtraProductPageTitle(text: AmazonConst.digerSaticilar, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
              AmazonConst.sizedBoxHeight10,
              TextProductPageTitle(text: AmazonConst.karsilastir, color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
              AmazonConst.sizedBoxHeight10,
              TextExtraProductPageTitle(text: AmazonConst.productMoney, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
              AmazonConst.sizedBoxHeight10,
              TextProductPageTitle(text: AmazonConst.kargoBedava, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold)
         

              ],
            ),
            Icon(Icons.keyboard_arrow_right_outlined,color: AmazonConst.colorBlue800,)
          ],
        ),
      );
  }

  Divider _divider() {
    return Divider(
                height: _dividerHeight,
                color: AmazonConst.colorGrey,
                thickness: _dividetTickness,
              );
  }

  TextExtraProductPageTitle _amazonGuvenliIslemTitle() => TextExtraProductPageTitle(text: AmazonConst.listeyeEkle, color: AmazonConst.colorBlue800, fontWeight: FontWeight.bold);

  Row _amazonGuvenliISlemIConText() {
    return Row(
                children: [
                  Icon(Icons.lock),
                  AmazonConst.sizedBoxWidht5,
                  AppBarBottomContainerText(text:AmazonConst.guvenliIslem , color: AmazonConst.colorBlue800),

                ],
              );
  }

  RichText _amazonGuvenliIslemRichText(BuildContext context) {
    return RichText(text: TextSpan(text: AmazonConst.modaKitap,style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16, color: AmazonConst.colorBlue800,fontWeight: FontWeight.bold),
              children:  [
                TextSpan(
                  text: AmazonConst.guvenliIslemAciklama,style: Theme.of(context).textTheme.bodyLarge?.copyWith( fontSize: 16, color: AmazonConst.colorBlack,fontWeight: FontWeight.bold),
                )
              ]
              ));
  }

  SizedBox _sizedBoxElevatedButtonTwo(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height /_elevatedButtonHeight,
                child: ElevatedButton(onPressed: () {},
             child: Center(child: TextProductPageTitle(text: AmazonConst.simdiSatinAl, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold)),
             style: ElevatedButton.styleFrom(primary: AmazonConst.colorOrange),),
              );
  }

  SizedBox _sizedBoxElevatedButton(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height /_elevatedButtonHeight,
              child: ElevatedButton(onPressed: () {},
               child: Center(child: TextProductPageTitle(text: AmazonConst.sepeteEkle, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold)),
               style: ElevatedButton.styleFrom(primary: AmazonConst.colorAmber),),
            );
  }

  Column _contextAndDropdown() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AmazonConst.sizedBoxHeight10,
                TextProductMoney(text: AmazonConst.productMoneyBig, moneykrs: AmazonConst.producTL,),
                  AmazonConst.sizedBoxHeight10,
                  TextProductPageTitle(text:AmazonConst.kdvDahildir , color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
                  _contextRowFirst(),
                  AmazonConst.sizedBoxHeight10,
                  _contextRowSecond(),
                  AmazonConst.sizedBoxHeight10,
                  _contextRowIconAndText(),
                  AmazonConst.sizedBoxHeight20,
                  TextExtraProductPageTitle(text: AmazonConst.stockJust, color: AmazonConst.colorGreen, fontWeight: FontWeight.bold),
                  _dropdown()
              ],
            );
  }

  DropdownButton<String> _dropdown() {
    return DropdownButton(focusColor: AmazonConst.colorGrey,icon: Icon(Icons.keyboard_arrow_down_rounded),
                    
                    value: _selectedItem,
                    items: _items.map((item) =>
                    DropdownMenuItem(
                      value: item,
                      child: Text(item,style: TextStyle(fontSize: 18,color: AmazonConst.colorBlack), ))
                     ).toList(), 
                    onChanged: (item) => setState(() => _selectedItem = item
                    
                    
                    ),);
  }

  Row _contextRowIconAndText() {
    return Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      TextProductPageTitle(text: AmazonConst.teslimatSelect, color: AmazonConst.colorBlue800, fontWeight: FontWeight.bold),
                      
                    ],
                  );
  }

  Row _contextRowSecond() {
    return Row(
                    children: [
                        TextProductPageTitle(text:AmazonConst.ucretsizTeslimat , color: AmazonConst.colorBlack, fontWeight: FontWeight.normal),
                       AmazonConst.sizedBoxWidht3,                   
                      TextProductPageTitle(text:AmazonConst.comedate , color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
                        AmazonConst.sizedBoxWidht3,
                     TextProductPageTitle(text:AmazonConst.ayrintilar , color: AmazonConst.colorBlue800, fontWeight: FontWeight.normal),

                    ],
                  );
  }

  Row _contextRowFirst() {
    return Row(
                    children: [
                     TextProductPageTitle(text:AmazonConst.taksitSecenek , color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
                     AmazonConst.sizedBoxWidht3,
                      TextProductPageTitle(text:AmazonConst.taksitler , color: AmazonConst.colorBlue800, fontWeight: FontWeight.normal),

                    ],
                  );
  }



  TextProductPageTitle _bookTittleBlue() => TextProductPageTitle(text: AmazonConst.bookTitleBlue, color: AmazonConst.colorBlue800, fontWeight: FontWeight.bold);

  Row _rowBookStarPoint() {
    return Row(children: [
          Icon(Icons.star,color:AmazonConst.colorAmber ,),
           Icon(Icons.star,color:AmazonConst.colorAmber ),
            Icon(Icons.star,color:AmazonConst.colorAmber ),
             Icon(Icons.star,color:AmazonConst.colorAmber ),
              Icon(Icons.star,color:AmazonConst.colorAmber ),
              TextProductPageTitle(text: AmazonConst.bookPoint, color: AmazonConst.colorBlue800, fontWeight: FontWeight.bold)

        ],);
  }

  Container _ContainerProductPromo(BuildContext context) {
    return Container(
width: MediaQuery.of(context).size.width /_promoContainerWidht,
height: MediaQuery.of(context).size.height /_promoContainerHeight,
color: AmazonConst.productPagePromo,
child: Padding(
  padding: AmazonConst.edgeInsetsOnlyRightLeft10,
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
Column(
  children: [
    Row(
      children: [
       TextProductPRomoContaiiner(text: AmazonConst.promoText5, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
       AmazonConst.sizedBoxWidht3,
         TextProductPRomoContaiiner(text: AmazonConst.urunalana, color: AmazonConst.colorBlack54, fontWeight: FontWeight.normal),
            AmazonConst.sizedBoxWidht3,
           TextProductPRomoContaiiner(text: AmazonConst.promoTextDiscound5, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
      ],
    ),
    Row(
children: [
    TextProductPRomoContaiiner(text: AmazonConst.promoText10, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
       AmazonConst.sizedBoxWidht3,
         TextProductPRomoContaiiner(text: AmazonConst.urunalana, color: AmazonConst.colorBlack54, fontWeight: FontWeight.normal),
            AmazonConst.sizedBoxWidht3,
           TextProductPRomoContaiiner(text: AmazonConst.promoTextDiscound10, color: AmazonConst.colorBlack, fontWeight: FontWeight.bold),
],
),
    Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(AmazonConst.amazonLogo,width: MediaQuery.of(context).size.width /_amazonLogoWidht,fit: BoxFit.fill ,),
      TextProductPRomoContaiiner(text: AmazonConst.superText, color: AmazonConst.colorRed, fontWeight: FontWeight.bold)
    ],
  ),
  
  ],
),
      Row(
        children: [
          Image.asset(AmazonConst.productPromoRightImage,fit: BoxFit.cover,),
        ],
      )
    ],
  ),
),
);
  }

  Container _containerAppbarBottom(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height /_appbarBottomContainerHeight,    
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        colors: <Color>[ Color.fromARGB(255, 201, 243, 237),Color.fromARGB(255, 134, 247, 245)]),),
  child: Padding(
    padding: AmazonConst.edgeInsetsOnlyRightLeft10,
    child: Row(
      children: [
        Icon(Icons.location_on_outlined,color: AmazonConst.colorBlack,),
        AmazonConst.sizedBoxWidht5,
        AppBarBottomContainerText(color: AmazonConst.colorBlack, text: AmazonConst.teslimatAdress,)
      ],
    ),
  ),
  );
  }
}
