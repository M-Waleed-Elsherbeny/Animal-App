import 'package:animal_app/core/style/app_string_manager.dart';
import 'package:animal_app/core/style/colors/app_colors_manager.dart';
import 'package:animal_app/core/style/fonts/app_text_style_manager.dart';
import 'package:animal_app/core/widgets/app_logo_widget.dart';
import 'package:animal_app/core/widgets/spacer.dart';
import 'package:animal_app/features/auth/widgets/custom_text_field_widget.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_width_height_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsManager.kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppWidthHeightManager.w16),
          child: Column(
            children: [
              Center(child: AppLogoAndTextWidget()),
              HeightSpace(height: AppWidthHeightManager.h10),
              Text(
                AppStringManager.appLogin,
                style: AppTextStyleManager.font38W400Black,
              ),
              HeightSpace(height: AppWidthHeightManager.h70),
              CustomTextFieldWidget(isEmail: true),
              HeightSpace(height: AppWidthHeightManager.h16),
              CustomTextFieldWidget(isPassword: true),
              HeightSpace(height: AppWidthHeightManager.h8),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    AppStringManager.forgetPassword,
                    style: AppTextStyleManager.font10W500Primary,
                  ),
                ),
              ),
              HeightSpace(height: AppWidthHeightManager.h31),
              SizedBox(
                width: double.infinity,
                height: AppWidthHeightManager.h50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColorsManager.kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        AppWidthHeightManager.r10,
                      ),
                    ),
                  ),
                  child: Text(
                    AppStringManager.appLogIn,
                    style: AppTextStyleManager.font14W400White,
                  ),
                ),
              ),
              Spacer(),
              RichText(
                text: TextSpan(
                  text: AppStringManager.dontHaveAccount,
                  style: AppTextStyleManager.font14W500Gray,
                  children: [
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          AppStringManager.appSignUp,
                          style: AppTextStyleManager.font14W500Gray.copyWith(
                            color: AppColorsManager.kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              HeightSpace(height: AppWidthHeightManager.h31),
            ],
          ),
        ),
      ),
    );
  }
}
