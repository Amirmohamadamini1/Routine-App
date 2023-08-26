import 'package:flutter/material.dart';
import 'package:routine_app/shared/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: AppText.header('Home')),
    );
  }
}
