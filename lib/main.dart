import 'package:flutter/material.dart';
import 'package:flutter_islami_app_sun_c7/hadeth/hadeth_details_screen.dart';
import 'package:flutter_islami_app_sun_c7/home/home_screen.dart';
import 'package:flutter_islami_app_sun_c7/my_theme.dart';
import 'package:flutter_islami_app_sun_c7/quran/Sura_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
    );
  }
}
