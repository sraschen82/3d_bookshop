import 'package:animations_test/src/mycolors.dart';
import 'package:animations_test/src/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  Animate.restartOnHotReload = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations Test',
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors().myRedColor,
        textTheme: Typography.whiteHelsinki,
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors().myRedColor),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
