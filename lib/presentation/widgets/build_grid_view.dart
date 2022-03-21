import 'package:breaking_bad/data/models/characters_models.dart';
import 'package:breaking_bad/logic/cubit/app_cubit.dart';
import 'package:breaking_bad/logic/cubit/app_states.dart';
import 'package:breaking_bad/presentation/widgets/build_loading.dart';
import 'package:breaking_bad/presentation/widgets/character_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildGridView extends StatefulWidget {
  const BuildGridView({Key? key}) : super(key: key);

  @override
  State<BuildGridView> createState() => _BuildGridViewState();
}

class _BuildGridViewState extends State<BuildGridView> {
  List<CharactersModel> _characters = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if(_characters.isEmpty){
          _characters = state is GetAllCharactersSuccess? state.characters: [];
        }
          return GridView.builder(
            itemCount: 3,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 13 / 20,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              if(_characters.isEmpty){
                return const Center(child: BuildLoading());
              }
              else {
                return const CharacterItem();
              }
            },
          );

      },
    );
  }
}
