import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled/utils/theme/theme.dart';
import 'Personalization/screens/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Headlee Green',
      themeMode: ThemeMode.system,
      theme: D_vaultTheme.lightTheme,
      darkTheme: D_vaultTheme.darkTheme,
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

