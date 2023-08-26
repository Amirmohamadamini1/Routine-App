import 'package:flutter/material.dart';

import '../../shared/app_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: AppText.header('Profile')),
    );
  }
}
