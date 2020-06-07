import 'package:flutter/material.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';

import 'app_colors.dart';

class AppTextStyles {
  // Font Family Name
  static const String kFontFamily = "OpenSans";

  // Menu Text Styles
  static const TextStyle menu1 = TextStyle(
      fontSize: AppDimens.menuTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w300,
      color: AppColors.primaryTextColor);

  static const TextStyle menu2 = TextStyle(
      fontSize: AppDimens.menuTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor);

  // Caption Text Styles
  static const TextStyle caption1 = TextStyle(
      fontSize: AppDimens.captionTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w300,
      color: AppColors.primaryTextColor);

  static const TextStyle caption2 = TextStyle(
      fontSize: AppDimens.captionTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor);

  // Normal Text Styles
  static const TextStyle normal1 = TextStyle(
      fontSize: AppDimens.normalTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w300,
      color: AppColors.primaryTextColor);

  static const TextStyle normal2 = TextStyle(
      fontSize: AppDimens.normalTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor);

  static const TextStyle normal3 = TextStyle(
      fontSize: AppDimens.normalTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor);

  static const TextStyle normalUnder1 = TextStyle(
      fontSize: AppDimens.normalTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w300,
      decorationColor: AppColors.primaryTextColor,
      decoration: TextDecoration.underline,
      color: AppColors.primaryTextColor);

  // Subtitle Text Styles
  static const TextStyle subtitle1 = TextStyle(
      fontSize: AppDimens.subtitleTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w300,
      color: AppColors.primaryTextColor);

  static const TextStyle subtitle2 = TextStyle(
      fontSize: AppDimens.subtitleTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor);

  static const TextStyle subtitle3 = TextStyle(
      fontSize: AppDimens.subtitleTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor);

  static const TextStyle subtitleUnder1 = TextStyle(
      fontSize: AppDimens.subtitleTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w300,
      decorationColor: AppColors.primaryTextColor,
      decoration: TextDecoration.underline,
      color: AppColors.primaryTextColor);

  // Title Text Styles
  static const TextStyle title1 = TextStyle(
      fontSize: AppDimens.titleTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w300,
      color: AppColors.primaryTextColor);

  static const TextStyle title2 = TextStyle(
      fontSize: AppDimens.titleTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.w600,
      color: AppColors.primaryTextColor);

  static const TextStyle title3 = TextStyle(
      fontSize: AppDimens.titleTextSize,
      fontFamily: kFontFamily,
      fontWeight: FontWeight.bold,
      color: AppColors.primaryTextColor);
}
