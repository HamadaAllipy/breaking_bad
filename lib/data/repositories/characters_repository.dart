import 'package:breaking_bad/data/models/characters_models.dart';

abstract class CharactersRepository {
  Future<List<CharactersModel>> getAllCharacters();
}
