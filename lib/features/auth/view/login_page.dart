import 'package:animal_app/core/style/app_string_manager.dart';
import 'package:animal_app/core/style/assets/app_assets_manager.dart';
import 'package:animal_app/core/style/fonts/app_text_style_manager.dart';
import 'package:animal_app/core/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_width_height_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: SvgPicture.asset(
                AppAssetsManager.appLogoSvg,
                height: AppWidthHeightManager.h70,
                width: AppWidthHeightManager.w70,
              ),
            ),
            HeightSpace(height: AppWidthHeightManager.h5),
            SizedBox(
              width: AppWidthHeightManager.w70,
              child: SvgPicture.asset(
                AppAssetsManager.appTextSvg,
                height: AppWidthHeightManager.h28,
                width: AppWidthHeightManager.w70,
              ),
            ),
            HeightSpace(height: AppWidthHeightManager.h10),
            Text(
              AppStringManager.appLogin,
              style: AppTextStyleManager.font38W400Black,
            ),
          ],
        ),
      ),
    );
  }
}
