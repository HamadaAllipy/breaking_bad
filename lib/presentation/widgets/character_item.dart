import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10,),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
    );
  }
}
