import 'package:flutter/material.dart';

import '../res/colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyColors.dividerColor,
      indent: size.width / 9.35,
      endIndent: size.width / 9.35,
    );
  }
}