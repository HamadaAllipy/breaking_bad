import 'package:breaking_bad/constants/app_strings.dart';
import 'package:breaking_bad/data/models/characters_models.dart';
import 'package:breaking_bad/data/repositories/characters_repository.dart';
import 'package:breaking_bad/helper/dio_helper.dart';
import 'package:dio/dio.dart';

class CharactersApi extends CharactersRepository{

  final List<CharactersModel> _characters = [];
  @override
  Future<List<CharactersModel>> getAllCharacters()async {
    try {
      Response? response = await DioHelper.get(endPoint: characters);
      for(var character in response!.data){
        _characters.add(CharactersModel.fromJson(json: character));
      }
    } on Exception catch (e) {
      print('Error : $e');
    }
    return _characters;
  }

}