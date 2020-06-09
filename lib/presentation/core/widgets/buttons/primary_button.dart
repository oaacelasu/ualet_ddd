import 'package:flutter/material.dart';
import 'package:ualet_ddd/presentation/core/design/app_colors.dart';
import 'package:ualet_ddd/presentation/core/design/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback action;

  const PrimaryButton({Key key, this.text, this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: action,
        child: Text(
          text,
          style: AppTextStyles.normal2.copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
