import 'package:fl_app/theme/images.dart';
import 'package:fl_app/views/authentication/authen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    animation.forward();
    rememberAuth();
  }

  rememberAuth() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => const AuthenPage());
    });
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        body: FadeTransition(
          opacity: animation,
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(imageBackground, fit: BoxFit.cover, height: MediaQuery.of(context).size.height,),
          ),
        ));
  }
}
