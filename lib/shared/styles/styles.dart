import 'package:breaking_bad/constants/app_colors.dart';
import 'package:breaking_bad/shared/themes/dark_theme.dart';
import 'package:breaking_bad/shared/themes/light_them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class Styles {
  static MaterialAppData androidStyle(_, __) {
    return MaterialAppData(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
    );
  }

  static CupertinoAppData iosStyle(_,__){
    return CupertinoAppData(
      color: AppColors.appYellow,
      theme: const CupertinoThemeData(

        textTheme: CupertinoTextThemeData(
          primaryColor: Colors.white,
          textStyle: TextStyle(
            color: Colors.white,
          ),

        ),
        barBackgroundColor: AppColors.appYellow,
        scaffoldBackgroundColor: AppColors.appGray,
      ),
    );
  }
}
