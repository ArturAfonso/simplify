import 'package:flutter/material.dart';

/*
primaria = #0ABBB5 "azul tiffany"
 rgb  10, 187, 181

secondaria = #473C8A "Azul ardósia escuro "
  rgb 71, 60, 138
errorColor = #F34646
successColor = #55DE63

*/

Map<int, Color> colorPri = {
  50: Color.fromRGBO(10, 187, 181, .1),
  100: Color.fromRGBO(10, 187, 181, .2),
  200: Color.fromRGBO(10, 187, 181, .3),
  300: Color.fromRGBO(10, 187, 181, .4),
  400: Color.fromRGBO(10, 187, 181, .5),
  500: Color.fromRGBO(10, 187, 181, .6),
  600: Color.fromRGBO(10, 187, 181, .7),
  700: Color.fromRGBO(10, 187, 181, 0.8),
  800: Color.fromRGBO(10, 187, 181, 0.9),
  900: Color.fromRGBO(10, 187, 181, 1),
  //azul juno
};

MaterialColor azulTiffany = MaterialColor(0xFF0ABBB5, colorPri);
//----------------------------------------------------------------------------
Map<int, Color> colorSec = {
  50: Color.fromRGBO(71, 60, 138, .1),
  100: Color.fromRGBO(71, 60, 138, .2),
  200: Color.fromRGBO(71, 60, 138, .3),
  300: Color.fromRGBO(71, 60, 138, .4),
  400: Color.fromRGBO(71, 60, 138, .5),
  500: Color.fromRGBO(71, 60, 138, .6),
  600: Color.fromRGBO(71, 60, 138, .7),
  700: Color.fromRGBO(71, 60, 138, 0.8),
  800: Color.fromRGBO(71, 60, 138, 0.9),
  900: Color.fromRGBO(71, 60, 138, 1),
  //azul juno
};

MaterialColor azulArdosia = MaterialColor(0xFF473C8A, colorSec);

final ThemeData appTheme = ThemeData(
  unselectedWidgetColor: Colors.red,
  drawerTheme: DrawerThemeData(),
  brightness: Brightness.light,
  primarySwatch: azulTiffany,
  primaryColor: Color(0xFF0ABBB5),
  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.white,
    ),
  ),
);
