import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lead_management_app/app/config/constants.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      color: kPrimaryColor,
      theme: ThemeData(
        appBarTheme: kAppbarTheme,
        iconTheme: kIconTheme,
        primaryColor: kPrimaryColor,
        floatingActionButtonTheme: kFloatingActionButton,
        inputDecorationTheme: kInputDecorationTheme,
        textSelectionTheme: kTextSelectionTheme,
        scaffoldBackgroundColor: kBgWhite,
      ),
    ),
  );
}
