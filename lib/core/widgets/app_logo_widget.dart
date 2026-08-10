import 'package:animal_app/core/style/assets/app_assets_manager.dart';
import 'package:animal_app/core/utils/app_width_height_manager.dart';
import 'package:animal_app/core/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssetsManager.appLogoSvg,
      height: AppWidthHeightManager.h70,
      width: AppWidthHeightManager.w70,
    );
  }
}

class AppLogoAndTextWidget extends StatelessWidget {
  const AppLogoAndTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppLogoWidget(),
        HeightSpace(height: AppWidthHeightManager.h5),
        SizedBox(
          width: AppWidthHeightManager.w70,
          child: SvgPicture.asset(AppAssetsManager.appTextSvg),
        ),
      ],
    );
  }
}
