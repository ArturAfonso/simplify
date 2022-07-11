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
          seconds: 10,
          backgroundColor: Color.fromARGB(0, 251, 251, 251),
          /* gradientBackground: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [colorCustom, Colors.white]),*/
          navigateAfterSeconds: Routes.LOGIN,
          loaderColor: azulArdosia,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                    height: Get.size.height / 2.5,
                    child: Image.asset('assets/logos/GIF.gif')),
              ),
              Text(
                "Simples como deve ser",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: azulArdosia,
                    fontSize: 18),
              )
            ],
          ),

          /*  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                child: ClipRRect(
                  child: Image.asset('assets/logos/GIF.gif'),
                  borderRadius: BorderRadius.circular(200.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "Simples como deve ser",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white, //azulArdosia,
                      fontSize: 18),
                ),
              )
            ],
          ), */

          /* Container(
                height: 300,
                width: 300,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                child: Image.asset("assets/logos/GIF.gif")) */
        ),
      ],
    ));
  }
}
