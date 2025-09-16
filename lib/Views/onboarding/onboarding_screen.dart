import 'package:flutter/material.dart';
import 'package:owala_app/Views/onboarding/components/body.dart';
import 'package:owala_app/utils/size_config.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}