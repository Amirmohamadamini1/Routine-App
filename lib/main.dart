import 'package:flutter/material.dart';
import 'package:routine_app/res/texts.dart';
import 'package:routine_app/route/names.dart';
import 'package:routine_app/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ConfigText.appname,
      initialRoute: Screens.root,
      routes: routes,
    );
  }
}
