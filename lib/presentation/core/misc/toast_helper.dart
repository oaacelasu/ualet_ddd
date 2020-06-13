import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:ualet_ddd/presentation/core/design/app_colors.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';
import 'package:ualet_ddd/presentation/core/design/app_text_styles.dart';

class ToastHelper {
  /// Get a success notification flushbar.
  static Flushbar createSuccess(
      {@required String message,
      Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      messageText: Text(
        message,
        style: AppTextStyles.normal1
            .copyWith(color: AppColors.successToastAccentColor),
      ),
      borderRadius: 10.0,
      margin: EdgeInsets.symmetric(
          vertical: AppDimens.layoutSpacerS,
          horizontal: AppDimens.layoutMargin),
      backgroundColor: AppColors.successToastColor,
      flushbarPosition: FlushbarPosition.TOP,
      icon: Icon(
        Icons.warning,
        size: 28.0,
        color: AppColors.successToastAccentColor,
      ),
      duration: duration,
    );
  }

  /// Get an information notification flushbar
  static Flushbar createInfo(
      {@required String message,
      Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      messageText: Text(
        message,
        style: AppTextStyles.normal1
            .copyWith(color: AppColors.infoToastAccentColor),
      ),
      borderRadius: 10.0,
      margin: EdgeInsets.symmetric(
          vertical: AppDimens.layoutSpacerS,
          horizontal: AppDimens.layoutMargin),
      backgroundColor: AppColors.infoToastColor,
      flushbarPosition: FlushbarPosition.TOP,
      icon: Icon(
        Icons.warning,
        size: 28.0,
        color: AppColors.infoToastAccentColor,
      ),
      duration: duration,
    );
  }

  /// Get a error notification flushbar
  static Flushbar createError(
      {@required String message,
      Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      messageText: Text(
        message,
        style: AppTextStyles.normal1
            .copyWith(color: AppColors.errorToastAccentColor),
      ),
      borderRadius: 10.0,
      margin: EdgeInsets.symmetric(
          vertical: AppDimens.layoutSpacerS,
          horizontal: AppDimens.layoutMargin),
      backgroundColor: AppColors.errorToastColor,
      flushbarPosition: FlushbarPosition.TOP,
      icon: Icon(
        Icons.warning,
        size: 28.0,
        color: AppColors.errorToastAccentColor,
      ),
      duration: duration,
    );
  }

  /// Get a flushbar that can receive a user action through a button.
  static Flushbar createAction(
      {@required String message,
      @required FlatButton button,
      String title,
      Duration duration = const Duration(seconds: 3)}) {
    return Flushbar(
      title: title,
      message: message,
      duration: duration,
      mainButton: button,
    );
  }

  // Get a flushbar that shows the progress of a async computation.
  static Flushbar createLoading(
      {@required String message,
      @required LinearProgressIndicator linearProgressIndicator,
      String title,
      Duration duration = const Duration(seconds: 3),
      AnimationController progressIndicatorController,
      Color progressIndicatorBackgroundColor}) {
    return Flushbar(
      title: title,
      message: message,
      icon: Icon(
        Icons.cloud_upload,
        color: Colors.blue[300],
      ),
      duration: duration,
      showProgressIndicator: true,
      progressIndicatorController: progressIndicatorController,
      progressIndicatorBackgroundColor: progressIndicatorBackgroundColor,
    );
  }

  /// Get a flushbar that shows an user input form.
  static Flushbar createInputFlushbar({@required Form textForm}) {
    return Flushbar(
      duration: null,
      userInputForm: textForm,
    );
  }
}
