import 'dart:async';
import 'package:clot/app/routes.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:clot/shared/constants/screen_size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AppRoutes.signUp);
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenSizeConfig.init(context);
    return Scaffold(
      body: Container(
        height: ScreenSizeConfig.height,
        width: ScreenSizeConfig.width,
        color: AppColors.primaryColor,
        child: Image.asset(
          AppImages.appLogo,
          height: ScreenSizeConfig.height * 0.45,
          width: ScreenSizeConfig.width * 0.45,
        ),
      ),
    );
  }
}
