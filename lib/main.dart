import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simplify/app/theme/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Simplify",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: appTheme,
    ),
  );
}
