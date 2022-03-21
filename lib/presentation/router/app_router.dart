import 'package:breaking_bad/constants/app_strings.dart';
import 'package:breaking_bad/data/services/api/characters_api.dart';
import 'package:breaking_bad/logic/cubit/app_cubit.dart';
import 'package:breaking_bad/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart'
    show MaterialPageRoute, Route, RouteSettings;
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route? onGenerateRouter(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context)=> AppCubit()..getAllCharacters(CharactersApi()),
            child: const HomeScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
