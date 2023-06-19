import 'package:admission_app/onbording/screen1.dart';
import 'package:admission_app/onbording/screen2.dart';
import 'package:admission_app/onbording/screen3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            Screen1(),
            Screen2(),
            Screen3(),
          ],
        ),
        Container(
            alignment: Alignment(0, 0.9),
            child: SmoothPageIndicator(controller: _controller, count: 3)),
      ]),
    );
  }
}
