import 'package:flutter/material.dart';
import 'package:newsapp/const/assets_const.dart';
import 'package:newsapp/const/color.dart';
import 'package:newsapp/const/string.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:math' as math;

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget>
    with TickerProviderStateMixin {
  late final AnimationController animationController =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            AnimatedBuilder(
                animation: animationController,
                child:  Image.asset(Appassets.logo,
          height: 200,
          width: 200,
          ),
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                      angle: animationController.value * 2.0 * math.pi,
                      child: child);
                }),
            Appstring.logostring.text
                .color(AppColor.primaryButton)
                .size(18)
                .makeCentered(),
            const Spacer(),
            Appstring.logostring1.text.make(),
            10.heightBox,
          ],
        ),
      ),
    );
  }
}
