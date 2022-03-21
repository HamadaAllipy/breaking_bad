import 'package:breaking_bad/data/models/characters_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class CharacterItem extends StatelessWidget {
  final CharactersModel charactersModel;

  const CharacterItem({Key? key, required this.charactersModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
      child: GridTile(
        child: FadeInImage(
          image: NetworkImage(
            charactersModel.img.toString(),
          ),
          fit: BoxFit.cover,
          placeholder: const AssetImage('assets/images/laoding.gif'),
        ),
        footer: Container(
          height: 40,
          color: Colors.black.withOpacity(0.5),
          child: Center(
            child: PlatformText(
              charactersModel.name.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
