import 'package:breaking_bad/data/repositories/characters_repository.dart';
import 'package:breaking_bad/logic/cubit/app_states.dart';
import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState>{

  AppCubit():super(InitialAppState());

  static AppCubit get(BuildContext context)=> BlocProvider.of(context);

  void getAllCharacters(CharactersRepository charactersRepository){
    emit(GetAllCharactersLoading());
    charactersRepository.getAllCharacters().then((value){
      emit(GetAllCharactersSuccess(value));
    }).catchError((onError){
      emit(GetAllCharactersError(onError));
    });
  }

  void test() {
    emit(GetAllCharactersError(''));
  }
}