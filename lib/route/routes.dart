import 'package:flutter/material.dart';
import 'package:routine_app/screens/homescreen/home_screen.dart';
import 'package:routine_app/screens/profilescreen/profile_screen.dart';

import '../splash.dart';
import 'names.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Screens.root: (context) => const Splash(),
  Screens.mainScreen: (context) => ProfileScreen(),
  Screens.signScreen: (context) => ProfileScreen(),
};
