import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Get.toNamed('/auth-layout');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: AppColors.backColor,
      body: Center(child: Text('Logo')),
    );
  }

  void authState() async {
    // var storage = const FlutterSecureStorage();
    // final token = await storage.read(key: 'token') ?? '';
    // if (token.isNotEmpty) {
    //   AppConstants.token = token;
    //   Get.toNamed('/home-screen');
    // } else {
    //   Get.toNamed('/login-screen');
    // }
  }
}
