import 'package:flutter/material.dart';
import 'package:varen_soft_application/ui/bottom_nav_bar.dart';
import 'package:varen_soft_application/ui/trading_main_page.dart';

import 'constants/custom_theme.dart';
import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key}): super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Varen Soft App',
      home: BottomNavBar(),
      theme: CustomTheme.LightTheme, //3
      darkTheme: CustomTheme.darkTheme, //4
      themeMode: currentTheme.currentTheme, //5
      debugShowCheckedModeBanner: false,
    );
  }
}

