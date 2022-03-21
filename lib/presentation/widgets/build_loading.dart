import 'package:breaking_bad/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class BuildLoading extends StatelessWidget {
  const BuildLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/laoding.gif');
  }
}
