import 'package:flutter/material.dart';
import 'package:quran_flutter_app/core/colors_managers.dart';

class MyTheme {
  static  ThemeData lightTheme= ThemeData(
    primaryColor: ColorManagers.GoldColor,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.black),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),


      ),
      cardTheme: CardTheme(
        margin: EdgeInsets.all(10),
        color: ColorManagers.GoldColor.withOpacity(0.9),
        elevation: 20,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: false,
        showSelectedLabels: true ,
        elevation: 50,
        backgroundColor: ColorManagers.GoldColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme:IconThemeData(color: Colors.black,size: 40),
        unselectedIconTheme: IconThemeData(color: Colors.white,size: 30),
  ),
      dividerColor:  ColorManagers.GoldColor,
    textTheme: TextTheme(
      headlineMedium:  TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff242424),

    ),
      titleMedium:  TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Color(0xff242424),
      ),
      bodyMedium: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white)
  ),);

}