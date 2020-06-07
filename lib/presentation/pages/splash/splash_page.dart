import 'package:flutter/material.dart';
import 'package:ualet_ddd/presentation/core/design/app_images.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Image.asset(AppImages.appIcon)),
    );
  }
}
