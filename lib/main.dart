import 'package:breaking_bad/constants/app_bloc_observer.dart';
import 'package:breaking_bad/constants/app_colors.dart';
import 'package:breaking_bad/helper/dio_helper.dart';
import 'package:breaking_bad/presentation/router/app_router.dart';
import 'package:breaking_bad/shared/styles/styles.dart';
import 'package:breaking_bad/shared/themes/dark_theme.dart';
import 'package:breaking_bad/shared/themes/light_them.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() {
  DioHelper.init();
  BlocOverrides.runZoned(
    () => runApp(
      const MyApp(),
    ),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PlatformApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRouter,
      material: Styles.androidStyle,
      cupertino: Styles.iosStyle,
    );
  }
}
