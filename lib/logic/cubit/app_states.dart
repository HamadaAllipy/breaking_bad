import 'package:breaking_bad/data/models/characters_models.dart';

abstract class AppState {}

class InitialAppState extends AppState {}

class GetAllCharactersSuccess extends AppState {
  final List<CharactersModel> characters;

  GetAllCharactersSuccess(this.characters);
}

class GetAllCharactersLoading extends AppState {}

class GetAllCharactersError extends AppState {
  final String error;

  GetAllCharactersError(this.error);
}
