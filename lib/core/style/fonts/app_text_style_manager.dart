import 'package:animal_app/core/style/colors/app_colors_manager.dart';
import 'package:animal_app/core/utils/app_fonts_manager.dart';
import 'package:flutter/material.dart';

class AppTextStyleManager {
  const AppTextStyleManager._();
  static TextStyle font38W400Black = TextStyle(
    fontSize: AppFontSizeManager.size38,
    fontWeight: FontWeight.w400,
    color: AppColorsManager.kBlackColor,
    fontFamily: AppFontManager.fontOtamaEp,
  );
  static TextStyle font16W400Grey = TextStyle(
    fontSize: AppFontSizeManager.size16,
    fontWeight: FontWeight.w400,
    color: AppColorsManager.kGrayColor,
    fontFamily: AppFontManager.fontPoppins,
  );

  static TextStyle font14W400White = TextStyle(
    fontSize: AppFontSizeManager.size14,
    fontWeight: FontWeight.w400,
    color: AppColorsManager.kWhiteColor,
    fontFamily: AppFontManager.fontPoppins,
  );

  static TextStyle font14W500Gray = TextStyle(
    fontSize: AppFontSizeManager.size14,
    fontWeight: FontWeight.w500,
    color: AppColorsManager.kGrayColor,
    fontFamily: AppFontManager.fontPoppins,
  );

  static TextStyle? font10W500Primary = TextStyle(
    fontSize: AppFontSizeManager.size10,
    fontWeight: FontWeight.w500,
    color: AppColorsManager.kPrimaryColor,
    fontFamily: AppFontManager.fontPoppins,
  );
}


