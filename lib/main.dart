import 'package:breaking_bad/helper/dio_helper.dart';
import 'package:breaking_bad/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

void main(){

  DioHelper.init();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRouter,
    );
  }
}
