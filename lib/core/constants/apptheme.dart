import 'package:flutter/material.dart';

import 'package:yugiohdecklab/core/constants/colors.dart';

class AppTheme {

  ThemeData themeEnglish = ThemeData(
  
    fontFamily: "sans",
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
        elevation: 0,
    )
    );
}

