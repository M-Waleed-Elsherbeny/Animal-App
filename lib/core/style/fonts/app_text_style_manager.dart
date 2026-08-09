import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyleManager {
  const AppTextStyleManager._();
  static TextStyle font38W400Black  = TextStyle(
    fontSize: 38.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontFamily: AppFontManager.fontOtamaEp,
  );
}

class AppFontManager{
  const AppFontManager._();
  static const String  fontPoppins = "Poppins";
  static const String  fontOtamaEp = "Otama-ep";
  
}