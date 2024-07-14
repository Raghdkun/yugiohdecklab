// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yugiohdecklab/core/constants/apptheme.dart';

// import 'package:yugiohdecklab/core/services/services.dart';


// class LocalLanguage extends GetxController {
//   Locale? language;

//   MyServices myServices = Get.find();

//   ThemeData appTheme = themeEnglish;

//   changelang(String langcode) {
//     Locale locale = Locale(langcode);
//     myServices.sharedPreferences.setString("lang", langcode);
//     appTheme = langcode == "Arabic" ? themeArabic : themeEnglish;
    
//     appTheme.primaryColorDark ;
//     Get.changeTheme(appTheme);
//     Get.updateLocale(locale);
//   }

//   @override
//   void onInit() {
//     String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
//     if (sharedPrefLang == 'Arabic') {
//       language = const Locale("Arabic");
//       appTheme = themeArabic ;
//     } else if (sharedPrefLang == 'English') {
//       language = const Locale("English");
//       appTheme = themeEnglish ;
//       appTheme.primaryColorDark ;
//     } else {
//       (language = Locale(Get.deviceLocale!.languageCode));
//       appTheme = themeEnglish ;
//       appTheme.primaryColorDark ;
//     }
//     super.onInit();
//   }
// }
