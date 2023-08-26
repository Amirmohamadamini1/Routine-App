import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:routine_app/res/texts.dart';

import 'package:routine_app/route/names.dart';

import 'shared/app_text.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    Future.delayed(const Duration(seconds: 3)).then(
        (value) => Navigator.pushReplacementNamed(context, Screens.mainScreen));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height / 3,
              width: size.height / 3,
              child: LineIcon.calendar(),
            ),
            AppText.medium(
              ConfigText.appname,
            ),
          ],
        ),
      ),
    ));
  }
}
