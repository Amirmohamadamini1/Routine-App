import 'package:flutter/material.dart';
import 'package:routine_app/res/colors.dart';
import 'package:routine_app/res/texts.dart';
import 'package:routine_app/shared/app_text.dart';
import 'package:routine_app/widgets/show_information_box.dart';
import '../../gen/assets.gen.dart';
import '../../widgets/custom_divider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height / 9.06,
            ),
            Stack(
              children: [
                Container(
                  width: size.width / 2.65,
                  height: size.height / 4.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage(Assets.images.userprofile),
                        fit: BoxFit.cover,
                      )),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      //TODO: change profile picture
                    },
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.photo_camera_outlined,
                        color: MyColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height / 42.6,
            ),
            CustomDivider(size: size),
            const ShowInformationBox(
                fieldName: ProfileText.firstName,
                fieldContent: ProfileText.userFirstName),
            const ShowInformationBox(
                fieldName: ProfileText.lastName,
                fieldContent: ProfileText.userLastName),
            const ShowInformationBox(
                fieldName: ProfileText.phoneNumber,
                fieldContent: ProfileText.userPhoneNumber),
            const SizedBox(
              height: 36,
            ),
            InkWell(
              onTap: () {
                // TODO: edit button
              },
              child: Container(
                width: size.width / 1.26,
                height: size.height / 18.12,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.white,
                    border: Border.all(
                        color: MyColors.buttonColor, style: BorderStyle.solid)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText.small(
                      ProfileText.edit,
                      color: MyColors.buttonColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Icon(
                      Icons.edit,
                      color: MyColors.buttonColor,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
