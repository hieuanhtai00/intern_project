import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_intern/common/config/image_constants.dart';
import 'package:project_intern/presenter/widgets/home/home_screen.dart';
import 'package:project_intern/routes.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
    animation = Tween<double>(begin: 50, end: 200).animate(controller);
    controller.forward();
    animation.addListener(() {
      setState(() {});
    });
    animation.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed)
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Routes()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageConstant.launch,
          height: animation.value,
          width: animation.value,
        ),
      ),
    );
  }
}
