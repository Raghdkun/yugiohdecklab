import 'package:get/get.dart';

import 'package:yugiohdecklab/core/services/services.dart';

translateDataBase(coulmnar, columnen) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString("lang") == "Arabic") {
    return coulmnar;
  } else {
    return columnen;
  }
}
