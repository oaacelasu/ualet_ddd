import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ualet_ddd/presentation/core/design/app_colors.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';
import 'package:ualet_ddd/presentation/core/widgets/buttons/custom_button_bar.dart';
import 'package:ualet_ddd/presentation/core/widgets/buttons/primary_button.dart';
import 'package:ualet_ddd/presentation/core/widgets/buttons/secondary_button.dart';
import 'package:ualet_ddd/presentation/core/widgets/dialogs/custom_dialog.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.layoutMargin,
            vertical: AppDimens.layoutSpacerM),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(hintText: 'Hola')),
                PrimaryButton(
                    text: 'Primary',
                    action: () => showDialog(
                        context: context,
                        child: CustomDialog(
                          title: 'Ya eres todo un inversionista digital!',
                          description:
                              'Aquí podrás crear tus metas de ahorro, seguir tus inversiones, añadir y retirar dinero, ver tus movimientos y notificaciones.',
                          icon: Icons.access_alarm,
                          buttonAction: () =>
                              ExtendedNavigator.rootNavigator.pop(),
                          buttonText: 'Button',
                        ))),
                SecondaryButton(text: 'Secondary', action: () {}),
                CustomButtonBar(
                    textA: 'Primary',
                    actionA: () {},
                    textB: 'Secondary',
                    actionB: () {}),
                CustomButtonBar(
                    textA: 'Primary',
                    actionA: () {},
                    textB: 'Secondary',
                    actionB: () {},
                    axisDirection: Axis.vertical)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
