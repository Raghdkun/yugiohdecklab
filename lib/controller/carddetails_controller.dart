import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/home_controller.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';

abstract class CardDetailscontainer extends GetxController {
  intialData() ;
}

class CardDetailscontainerImp extends CardDetailscontainer {

  @override
  void onInit() {
    intialData() ;
    
    super.onInit();
  }

  late CardsModel datamodel ;
  late CardPrices cardprice ;

  @override
  intialData() {
    datamodel = Get.arguments['datamodel'] ;
    // cardprice = Get.arguments['cardprice'] ;


    


  }


}