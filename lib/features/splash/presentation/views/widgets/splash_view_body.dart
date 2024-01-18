import 'package:bookly/core/utils/assets_manager.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // .stretch it is mean the childrens take the largest width they can --> the screen width
      children: [Image.asset(AssetManager.logo)],
    );
  }
}
