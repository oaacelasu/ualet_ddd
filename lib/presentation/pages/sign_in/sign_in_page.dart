import 'package:flutter/material.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';

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
            TextFormField(decoration: InputDecoration(labelText: 'Hola')),
            const SizedBox(height: 15.0),
            TextFormField(decoration: InputDecoration(hintText: 'Hola')),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Hola'),
              enabled: false,
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(hintText: 'Hola'),
              enabled: false,
            ),
            const SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Hola',
                  floatingLabelBehavior: FloatingLabelBehavior.always),
              validator: (_) => 'Error',
              autovalidate: true,
            ),
            const SizedBox(height: 15.0),
            TextFormField(),
            const SizedBox(height: 15.0),
            TextFormField()
          ],
        ),
      ),
    );
  }
}
