import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xff000000),
       buttonColor: Color(0xff2B1A1E), // warna button "AC/C"
        accentColor: Color(0xffB25067), // warna tulisan "AC/C"
        canvasColor: Color(0xff7C90E7), // warna button "="
        bottomAppBarColor:  Color(0xffffffff), // warna tulisan sisanya
        cardColor: Color(0xff2458A5), // warna button  "bagi, x, -, +",
        primaryColor: Color(0xff232428), // warna button sisa nya
        hintColor: Color(0xff7C90E7), // warna tulisan hapus
        hoverColor: Color(0xff7C90E7), // warna rumus
        dialogBackgroundColor: Color(0xff2458A5), // warna hasil
        brightness: Brightness.dark 
  );

  static final LightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xffF7F8FA),
    buttonColor: Color(0xffF8ECEC), // warna button "AC/C"
        accentColor: Color(0xffB9868F), // warna tulisan "AC/C"
        canvasColor: Color(0xff2458A5), // warna button "="
        bottomAppBarColor:  Color(0xff000000), // warna tulisan sisanya
        cardColor: Color(0xff7C90E7), // warna button  "bagi, x, -, +",
        primaryColor: Color(0xffE6EDF3), // warna button sisa nya
        hintColor: Color(0xff2458A5), // warna tulisan hapus
        hoverColor: Color(0xff2458A5), // warna rumus
        dialogBackgroundColor: Color(0xff7C90E7), // warna hasil
        brightness: Brightness.light 
  );
}