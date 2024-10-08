import 'package:burclar_2/routes/pages.dart';
import 'package:burclar_2/routes/routes.dart';
import 'package:burclar_2/utility/my_const.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppProperty.mainColor),
        useMaterial3: false,
        cardTheme: const CardTheme(
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(24),
            ),
            side: BorderSide(
              color: AppProperty.mainColor,
              width: 2,
            ),
          ),
        ),
      ),
      initialRoute: Routes.Burc,
      getPages: Pages.pages,
    );
  }
}
