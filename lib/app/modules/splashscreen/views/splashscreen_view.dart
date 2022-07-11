import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simplify/app/modules/login/controllers/login_controller.dart';
import 'package:simplify/app/modules/login/views/login_view.dart';
import 'package:simplify/app/routes/app_pages.dart';
import 'package:simplify/app/theme/theme.dart';
import 'package:splashscreen/splashscreen.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return Scaffold(
        //  appBar: AppBar(title: Text('Initial Page')),
        body: Stack(
      children: [
        SplashScreen(
          seconds: 3600,
          backgroundColor: Colors.white,
          /* gradientBackground: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [colorCustom, Colors.white]),*/
          navigateAfterSeconds: Routes.LOGIN,
          loaderColor: azulTiffany,
        ),
        Center(child: Image.asset("assets/logos/GIF2.gif"))
      ],
    ));
  }
}
