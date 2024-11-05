import 'package:flutter/material.dart';
import 'package:quran_flutter_app/config/theme/themeData.dart';
import 'package:quran_flutter_app/presention/modules/home_module/screens/home_screen.dart';
import 'package:quran_flutter_app/presention/modules/home_module/screens/splash/splash_screen.dart';

import '../core/routes_managers.dart';
import '../presention/modules/home_module/screens/Quran_detailes_screen/quran_details_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  MyTheme.lightTheme,
      routes: {
        RoutesManager.HomeRoute :(_)=>  HomeScreen(),
        RoutesManager.splashRoute :(_)=>  SplashScreen(),
        RoutesManager.quranDetailsRaute :(_)=>  QuranDetailsScreen(),
      },

      initialRoute: RoutesManager.splashRoute ,
 );
  }
}
