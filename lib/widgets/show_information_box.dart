import 'package:flutter/material.dart';
import 'package:routine_app/res/colors.dart';
import 'package:routine_app/shared/app_text.dart';
import 'package:routine_app/widgets/custom_divider.dart';

class ShowInformationBox extends StatelessWidget {
  final String fieldName;
  final String fieldContent;
  const ShowInformationBox(
      {super.key, required this.fieldName, required this.fieldContent});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding:
              EdgeInsets.fromLTRB(size.width / 8.35, 0, size.width / 8.35, 0),
          child: AppText.small(fieldName, color: MyColors.textFieldTitle),
        ),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding:
              EdgeInsets.fromLTRB(size.width / 8.35, 0, size.width / 8.35, 0),
          child: AppText.medium(
            fieldContent,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        CustomDivider(size: size),
      ],
    );
  }
}
