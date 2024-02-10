import 'package:flutter/material.dart';
import 'package:islami_c10_thursday/ui/home/home_screen.dart';
import 'package:islami_c10_thursday/ui/home/quran_tab/quran_details_screen.dart';
import 'package:islami_c10_thursday/ui/splash_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.black, unselectedItemColor: Colors.white),
      ),
      routes: {
        QuranDetailsScreen.routeName: (context) => QuranDetailsScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        //  SplashScreen.routeName : (_)=> SplashScreen(),
      },
      initialRoute: HomeScreen.routeName, //home
    );
  }
}
