import 'package:flutter/material.dart';
import 'package:islami_c10_thursday/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islami_c10_thursday/ui/home/home_screen.dart';
import 'package:islami_c10_thursday/ui/home/quran_tab/quran_details_screen.dart';
import 'package:islami_c10_thursday/ui/styles/my_thtme_data.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
        QuranDetailsScreen.routeName: (context) => QuranDetailsScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        //  SplashScreen.routeName : (_)=> SplashScreen(),
      },
      initialRoute: HomeScreen.routeName, //home
    );
  }
}
