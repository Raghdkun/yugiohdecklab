import 'package:get/get.dart';
import 'package:yugiohdecklab/core/class/crud.dart';


class IntialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud()) ;
  }

}