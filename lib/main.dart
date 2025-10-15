import 'package:flutter/material.dart';
import 'package:fse34_25_1_3/screens/home_page.dart';
import 'package:fse34_25_1_3/styles/app_styles.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppStyles.pinkColor,
          foregroundColor: AppStyles.whiteColor,
          titleTextStyle: AppStyles.appBarTitle,
          centerTitle: true,
        ),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(elevation: 30),
      ),
      home: const HomePage(),
    );
  }
}
