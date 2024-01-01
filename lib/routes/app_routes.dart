import 'package:flutter/material.dart';
import 'package:post/presentation/iphone_13_14_one_screen/iphone_13_14_one_screen.dart';
import 'package:post/presentation/iphone_14_15_pro_one_screen/iphone_14_15_pro_one_screen.dart';
import 'package:post/presentation/iphone_13_14_three_screen/iphone_13_14_three_screen.dart';
import 'package:post/presentation/iphone_13_14_four_screen/iphone_13_14_four_screen.dart';
import 'package:post/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String iphone1314OneScreen = '/iphone_13_14_one_screen';

  static const String iphone1415ProOneScreen = '/iphone_14_15_pro_one_screen';

  static const String iphone1314ThreeScreen = '/iphone_13_14_three_screen';

  static const String iphone1314FourScreen = '/iphone_13_14_four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    iphone1314OneScreen: (context) => Iphone1314OneScreen(),
    iphone1415ProOneScreen: (context) => Iphone1415ProOneScreen(),
    iphone1314ThreeScreen: (context) => Iphone1314ThreeScreen(),
    iphone1314FourScreen: (context) => Iphone1314FourScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
