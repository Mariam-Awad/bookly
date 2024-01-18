import 'package:bookly/core/utils/assets_manager.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation = Tween(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

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
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }
}
