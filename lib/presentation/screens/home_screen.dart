import 'package:breaking_bad/data/services/api/characters_api.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            CharactersApi charactersApi = CharactersApi();
            charactersApi.getAllCharacters();
          },
          child: const Text('click me'),
        )
      ),
    );
  }
}
