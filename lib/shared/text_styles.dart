import 'package:at_contacts_flutter/at_contacts_flutter.dart';
import 'package:at_contacts_group_flutter/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {
  factory CustomTextStyles() => _instance;
  CustomTextStyles._();
  static final CustomTextStyles _instance = CustomTextStyles._();

  TextStyle blackPlayfairDisplay38 = TextStyle(
    fontFamily: 'PlayfairDisplay',
    fontSize: 38.toFont,
    color: AllColors().Black,
  );

  // TextStyle primaryBold14 = TextStyle(
  //   color: AllColors().FONT_PRIMARY,
  //   fontSize: 14.toFont,
  //   letterSpacing: 0.1,
  //   fontWeight: FontWeight.w700,
  // );

  TextStyle greyLabel14 = TextStyle(
    color: AllColors().GREY_LABEL,
    fontSize: 14.toFont,
  );

  TextStyle greyLabel12 = TextStyle(
    color: AllColors().GREY_LABEL,
    fontSize: 12.toFont,
  );

  TextStyle lightGreyLabel12 = TextStyle(
    color: AllColors().LIGHT_GREY_LABEL,
    fontSize: 12.toFont,
  );
  TextStyle black16 = TextStyle(
    color: AllColors().Black,
    fontSize: 16.toFont,
  );

  TextStyle black16bold = TextStyle(
    color: AllColors().Black,
    fontSize: 16.toFont,
    fontWeight: FontWeight.w700,
  );
  TextStyle black12 = TextStyle(
    color: AllColors().Black,
    fontSize: 12.toFont,
  );

  TextStyle white15 = TextStyle(
    color: AllColors().WHITE,
    fontSize: 15.toFont,
  );

  TextStyle black18 = TextStyle(
    color: AllColors().Black,
    fontSize: 18.toFont,
    fontWeight: FontWeight.w700,
  );

  TextStyle black10 = TextStyle(
    color: AllColors().Black,
    fontSize: 10.toFont,
  );

  TextStyle orange16 = TextStyle(
    color: AllColors().ORANGE,
    fontSize: 16.toFont,
  );

  TextStyle orange12 = TextStyle(
    color: AllColors().ORANGE,
    fontSize: 12.toFont,
  );

  TextStyle orange14 = TextStyle(
    color: AllColors().ORANGE,
    fontSize: 14.toFont,
  );

  TextStyle darkGrey15 = TextStyle(
    color: AllColors().DARK_GREY,
    fontSize: 15.toFont,
  );

  TextStyle darkGrey10 = TextStyle(
    color: AllColors().DARK_GREY,
    fontSize: 10.toFont,
  );

  TextStyle orange18 = TextStyle(
    color: AllColors().ORANGE,
    fontSize: 18.toFont,
  );

  TextStyle darkGrey13 = TextStyle(
    color: AllColors().DARK_GREY,
    fontSize: 13.toFont,
  );

  TextStyle darkGrey14 =
      TextStyle(color: AllColors().DARK_GREY, fontSize: 14.toFont);

  TextStyle boldLabel16 = TextStyle(
    fontSize: 16.toFont,
  );

  TextStyle black14 = TextStyle(
    color: AllColors().Black,
    fontSize: 14.toFont,
  );

  TextStyle darkGrey16 = TextStyle(
    color: AllColors().DARK_GREY,
    fontSize: 16.toFont,
  );

  TextStyle grey16 = TextStyle(
    color: AllColors().GREY,
    fontSize: 16.toFont,
  );

  TextStyle darkGrey12 = TextStyle(
    color: AllColors().DARK_GREY,
    fontSize: 12.toFont,
  );

  TextStyle grey12 = TextStyle(
    color: AllColors().GREY,
    fontSize: 12.toFont,
  );

  TextStyle grey14 = TextStyle(
    color: AllColors().GREY,
    fontSize: 14.toFont,
  );

  static TextStyle whiteBold({int size = 16}) => TextStyle(
        color: Colors.white,
        fontSize: size.toFont,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w700,
      );
}
