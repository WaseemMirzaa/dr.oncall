import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  print("App starting...");
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'IBMPlexSans',
      ),
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
