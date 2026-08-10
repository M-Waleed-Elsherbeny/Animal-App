import 'package:animal_app/core/style/app_string_manager.dart';
import 'package:animal_app/core/style/colors/app_colors_manager.dart';
import 'package:animal_app/core/style/fonts/app_text_style_manager.dart';
import 'package:animal_app/core/utils/app_fonts_manager.dart';
import 'package:animal_app/core/utils/app_width_height_manager.dart';
import 'package:animal_app/core/widgets/spacer.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    this.isEmail = false,
    this.isPassword = false,
    this.isPassWordVisable = false,
    this.controller,
    this.onTapPasswordVisability,
  });

  final bool isEmail, isPassword;
  final bool isPassWordVisable;
  final TextEditingController? controller;
  final VoidCallback? onTapPasswordVisability;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isEmail) ...[
          Text(
            AppStringManager.appEmail,
            style: AppTextStyleManager.font16W400Grey,
          ),
          HeightSpace(height: AppWidthHeightManager.h8),
        ],
        if (isPassword) ...[
          Text(
            AppStringManager.appPassword,
            style: AppTextStyleManager.font16W400Grey,
          ),
          HeightSpace(height: AppWidthHeightManager.h8),
        ],
        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          cursorColor: AppColorsManager.kPrimaryColor,
          controller: controller,
          obscureText: isPassWordVisable,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColorsManager.kLightGrayColor,
            hint: Text(
              isEmail
                  ? AppStringManager.enterYourEmialAddress
                  : isPassword
                  ? AppStringManager.enterYourPassword
                  : "",
              style: AppTextStyleManager.font16W400Grey.copyWith(
                fontSize: AppFontSizeManager.size14,
              ),
            ),
            isDense: true,
            prefixIcon: Icon(
              isEmail
                  ? Icons.email_outlined
                  : isPassword
                  ? Icons.lock_outline
                  : null,
              color: AppColorsManager.kPrimaryColor,
            ),
            suffixIcon: IconButton(
              onPressed: onTapPasswordVisability ?? () {},
              icon: Icon(
                isPassword && !isPassWordVisable
                    ? Icons.visibility_off_outlined
                    : isPassword && isPassWordVisable
                    ? Icons.visibility_outlined
                    : null,
              ),

              color: AppColorsManager.kPrimaryColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppWidthHeightManager.r10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              gapPadding: AppWidthHeightManager.w5,
              borderRadius: BorderRadius.circular(AppWidthHeightManager.r10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColorsManager.kPrimaryColor),
              borderRadius: BorderRadius.circular(AppWidthHeightManager.r10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColorsManager.kErrorColor),
              borderRadius: BorderRadius.circular(AppWidthHeightManager.r10),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColorsManager.kErrorColor),
              borderRadius: BorderRadius.circular(AppWidthHeightManager.r10),
            ),
          ),
        ),
      ],
    );
  }
}
