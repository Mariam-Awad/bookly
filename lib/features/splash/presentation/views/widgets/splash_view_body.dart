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
      children: [
        Image.asset(AssetManager.logo),
        const SizedBox(
          height: 4.0,
        ),
        const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          // al text widget wa5da full width beta3 al screen
          // lama 3mlt textAlign.center b2t fe al screen center
        )
      ],
    );
  }
}
