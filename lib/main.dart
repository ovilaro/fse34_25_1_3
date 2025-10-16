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
      theme: ThemeData(appBarTheme: AppStyles.appBarTheme),
      home: const HomePage(),
    );
  }
}
