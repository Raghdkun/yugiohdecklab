import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/binding/intial_binding.dart';
import 'package:yugiohdecklab/core/constants/apptheme.dart';

import 'package:yugiohdecklab/core/services/services.dart';
import 'package:yugiohdecklab/route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // LocalLanguage controller = Get.put(LocalLanguage());

    return GetMaterialApp(
      title: 'Flutter Demo',
      // locale: controller.language,
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeEnglish ,
      initialBinding: IntialBindings(),
      getPages: routes,
      
      

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
