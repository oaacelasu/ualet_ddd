import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ualet_ddd/generated/l10n.dart';
import 'package:ualet_ddd/presentation/core/design/app_colors.dart';
import 'package:ualet_ddd/presentation/core/design/app_text_styles.dart';
import 'package:ualet_ddd/presentation/routes/router.gr.dart';

class HaveAccountButton extends StatelessWidget {
  const HaveAccountButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.left,
        text: TextSpan(children: [
          TextSpan(
              text: S.of(context).alreadyHaveAnAccountLabel,
              style: AppTextStyles.normal1.copyWith(color: AppColors.g50Color)),
          TextSpan(
              text: S.of(context).alreadyHaveAnAccountButton,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  ExtendedNavigator.rootNavigator.pushNamed(Routes.signInPage);
                },
              style: AppTextStyles.normalUnder1
                  .copyWith(color: AppColors.primaryColor))
        ]));
  }
}
