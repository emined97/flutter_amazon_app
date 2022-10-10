
import 'package:amazon_app_clone/const/amazon_const_view.dart';
import 'package:amazon_app_clone/widgets/card_design_text_image_view.dart';
import 'package:amazon_app_clone/widgets/container_row_texticon_view.dart';
import 'package:flutter/material.dart';

class AmazonCategory extends StatefulWidget {
  const AmazonCategory({Key? key}) : super(key: key);

  @override
  State<AmazonCategory> createState() => _AmazonCategoryState();
}

class _AmazonCategoryState extends State<AmazonCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AmazonConst.colorTurqois,
      appBar: _rowCategoryTextfield(),
      body: Padding(
        padding: AmazonConst.paddingCategoryOnlyTwo,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _rowOneCategory(),
              AmazonConst.sizedBoxHeight5,
              _rowTwoCategory(),
              AmazonConst.sizedBoxHeight5,
              _rowThreCategory(),
              AmazonConst.sizedBoxHeight5,
              _rowFourCategory(),
              AmazonConst.sizedBoxHeight5,
              _rowFiveCategory(),
              AmazonConst.sizedBoxHeight10,
              const ContainerRowTextIcon(
                text: AmazonConst.textAyarlar,
                icon: Icons.keyboard_arrow_down_rounded,
                image: AmazonConst.imageTurkbayragi,
              ),
              AmazonConst.sizedBoxHeight10,
              const ContainerRowTextIcon(
                text: AmazonConst.textMusterih,
                icon: Icons.keyboard_arrow_right,
                image: AmazonConst.imageBossayfa,
              ),
              AmazonConst.sizedBoxHeight10,
              const ContainerRowTextIcon(
                text: AmazonConst.textGiris,
                icon: Icons.keyboard_arrow_right,
                image: AmazonConst.imageBossayfa,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _rowCategoryTextfield() {
    return AppBar(
      backgroundColor: AmazonConst.colorTurqois,
      flexibleSpace: Padding(
        padding: AmazonConst.paddingCategoryOnly,
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, color: AmazonConst.colorBlack),
              fillColor: AmazonConst.colorWhite,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: AmazonConst.borderRadiusCircular10),
              suffixIcon: Icon(Icons.camera_enhance),
              hintText: AmazonConst.appbarTextFieldHintext),
        ),
      ),
    );
  }

  Row _rowFiveCategory() {
    return Row(
      children: [
        CardDesignTextImage(
            text: AmazonConst.textBavul, image: AmazonConst.imageBavul),
        AmazonConst.sizedBoxWidht10,
        CardDesignTextImage(
            text: AmazonConst.textBeyazesya, image: AmazonConst.imageBeyazesya),
      ],
    );
  }

  Row _rowFourCategory() {
    return Row(
      children: [
        CardDesignTextImage(
            text: AmazonConst.textBakim, image: AmazonConst.imageBakim),
        AmazonConst.sizedBoxWidht10,
        CardDesignTextImage(
            text: AmazonConst.textElektronik,
            image: AmazonConst.imageElektronik)
      ],
    );
  }

  Row _rowThreCategory() {
    return Row(
      children: [
        CardDesignTextImage(
            text: AmazonConst.textEvcilHayvan,
            image: AmazonConst.imageEvcilhayvan),
        AmazonConst.sizedBoxWidht10,
        CardDesignTextImage(
            text: AmazonConst.textModa, image: AmazonConst.imageModa)
      ],
    );
  }

  Row _rowTwoCategory() {
    return Row(
      children: [
        CardDesignTextImage(
            text: AmazonConst.textGidaYiyecek, image: AmazonConst.imageGida),
        AmazonConst.sizedBoxWidht10,
        CardDesignTextImage(
            text: AmazonConst.textMakyaj, image: AmazonConst.imageMakyaj)
      ],
    );
  }

  Row _rowOneCategory() {
    return Row(
      children: [
        CardDesignTextImage(
            text: AmazonConst.textHediye, image: AmazonConst.imageHediye),
        AmazonConst.sizedBoxWidht10,
        CardDesignTextImage(
            text: AmazonConst.textFirsatlar, image: AmazonConst.imageFirsatlar)
      ],
    );
  }
}
