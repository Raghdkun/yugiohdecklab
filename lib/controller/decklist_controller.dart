import 'package:get/get.dart';
import 'package:yugiohdecklab/core/class/statusrequest.dart';
import 'package:yugiohdecklab/core/functions/handelingdatacontroller.dart';
import 'package:yugiohdecklab/data/datasourse/remote/imagedata.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';
import 'package:yugiohdecklab/view/widgets/cardsimages.dart';

import '../data/datasourse/remote/decklistdata.dart';
import '../data/datasourse/remote/homedata.dart';

abstract class DeckListController extends GetxController {
 
}

class DeckListControllerImp extends DeckListController {

  StatusRequest statusRequest = StatusRequest.initial;

  HomeData homeData = HomeData(Get.find());
  ImageData imageData = ImageData(Get.find());
  List<CardsModel> cardslist = [] ;
  List<CardPrices> cardslistsets = [] ;



getcards() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      // data.addAll(response['data']);
    List cardsdata = response['data'] ;
    


    cardslist.addAll(cardsdata.map((e) => CardsModel.fromJson(e))) ;
    // cardslistsets.addAll(cardsdata.map((e) => CardPrices.fromJson(e))) ;

    


      // myServices.sharedPreferences.setString("name", response['data']['id']);
      // myServices.sharedPreferences.setString("name", response['data']['name']);
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }
  


  @override
  void onInit() {
   getcards();
    update() ;
    super.onInit();
  }

    List decks = [] ;
    

}
// List li = ['data' , ['data']] ;