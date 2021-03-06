import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_dimens.dart';
import 'app_text_styles.dart';

class AppTheme {
  static final ThemeData primaryTheme = ThemeData.light().copyWith(
    backgroundColor: AppColors.backgroundColor,
    primaryColor: AppColors.primaryColor,
    accentColor: AppColors.primaryColor,
    cursorColor: AppColors.primaryColor,
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: AppColors.primaryColor,
    ),
    appBarTheme: ThemeData.light().appBarTheme.copyWith(
          brightness: Brightness.dark,
          color: AppColors.primaryColor,
          iconTheme: ThemeData.dark().iconTheme,
        ),
    buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(
            vertical: AppDimens.layoutSpacerS,
            horizontal: AppDimens.layoutSpacerM),
        colorScheme: ThemeData.light().buttonTheme.colorScheme.copyWith(
            primary: AppColors.primaryColor, secondary: AppColors.primaryColor),
        textTheme: ButtonTextTheme.primary),
    buttonColor: AppColors.primaryColor,
    inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.inputColor,
        filled: true,
        labelStyle: AppTextStyles.normal1,
        hintStyle: AppTextStyles.normal1.copyWith(color: AppColors.g25Color),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        focusedBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppDimens.textFieldBorderRadius),
            borderSide: BorderSide(
                color: AppColors.g10Color,
                style: BorderStyle.solid,
                width: 2.0)),
        enabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppDimens.textFieldBorderRadius),
            borderSide: BorderSide(
                color: AppColors.g10Color,
                style: BorderStyle.solid,
                width: 1.0)),
        errorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppDimens.textFieldBorderRadius),
            borderSide: BorderSide(
                color: Colors.red, style: BorderStyle.solid, width: 1.0)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppDimens.textFieldBorderRadius),
            borderSide: BorderSide(
                color: Colors.red, style: BorderStyle.solid, width: 2.0)),
        disabledBorder: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(AppDimens.textFieldBorderRadius),
            borderSide: BorderSide(
                color: Colors.grey[300],
                style: BorderStyle.solid,
                width: 1.0))),
  );
}
