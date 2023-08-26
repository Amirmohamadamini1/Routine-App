import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import '../res/colors.dart';

class AppText extends Text {
  final Color? color;
  final FontWeight? fontWeight;
  final double fontSize;
  final TextAlign? txtAlign;

  AppText.header(
    String data, {
    Key? key,
    this.color = MyColors.titleColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 26,
    this.txtAlign = TextAlign.right,
  }) : super(data,
            key: key,
            textAlign: txtAlign,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.vazirBold,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.larg(
    String data, {
    Key? key,
    this.color = MyColors.titleColor,
    this.fontWeight = FontWeight.bold,
    this.fontSize = 24,
    this.txtAlign = TextAlign.right,
  }) : super(data,
            key: key,
            textAlign: txtAlign,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.vazirMedium,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.medium(
    String data, {
    Key? key,
    this.color = MyColors.titleColor,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 16,
    this.txtAlign = TextAlign.right,
  }) : super(data,
            key: key,
            textAlign: txtAlign,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.vazirMedium,
                fontWeight: fontWeight,
                fontSize: fontSize));

  AppText.small(
    String data, {
    Key? key,
    this.color = MyColors.titleColor,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 12,
    this.txtAlign = TextAlign.right,
  }) : super(data,
            key: key,
            textAlign: txtAlign,
            style: TextStyle(
                color: color,
                fontFamily: FontFamily.vazirMedium,
                fontWeight: fontWeight,
                fontSize: fontSize));
}
