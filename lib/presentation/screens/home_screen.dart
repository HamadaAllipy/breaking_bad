import 'package:breaking_bad/constants/app_colors.dart';
import 'package:breaking_bad/constants/app_strings.dart';
import 'package:breaking_bad/data/services/api/characters_api.dart';
import 'package:breaking_bad/logic/cubit/app_cubit.dart';
import 'package:breaking_bad/logic/cubit/app_states.dart';
import 'package:breaking_bad/presentation/widgets/build_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appGray,
      appBar: AppBar(
        title: const Text(
          appName,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: BuildGridView(),
      ),
      floatingActionButton: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) => FloatingActionButton(
          onPressed: () {
            AppCubit.get(context).test();
          },
        ),
      ),
    );
  }
}
