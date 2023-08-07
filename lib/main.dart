import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_note/screens/home_screen.dart';
import 'package:your_note/screens/style/app_theme.dart';
import 'controllers/theme_controller.dart';

void main() {
  appInit();
}

appInit() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<ThemeController>(ThemeController());

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeController.to.isDarkModel == true ? AppTheme.dark : AppTheme.light,
      defaultTransition: Transition.fade,
      home: HomeScreen(),
    ),
  );
}

