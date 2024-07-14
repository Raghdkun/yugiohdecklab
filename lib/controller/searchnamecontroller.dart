// import 'dart:convert';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_connect/http/src/utils/utils.dart';
// import 'package:yugiohdecklab/core/class/statusrequest.dart';
// import 'package:yugiohdecklab/core/functions/handelingdatacontroller.dart';
// import 'package:yugiohdecklab/core/services/services.dart';

// import 'package:yugiohdecklab/data/datasourse/remote/homedata.dart';
// import 'package:yugiohdecklab/data/datasourse/remote/imagedata.dart';
// import 'package:yugiohdecklab/data/datasourse/remote/searchdata.dart';
// import 'package:yugiohdecklab/data/models/cardsmodel.dart';

// abstract class SearchNameController extends GetxController {
  
//   getSearch(String ? filt);

//   goToCardsDetails(CardsModel datamodel);

//   StatusRequest statusRequest = StatusRequest.initial;
// }

// class SearchNameControllerImp extends SearchNameController {
//   MyServices myServices = Get.find();
//   // bool isSearching = false ;
//   List searchResults = [];
//   bool textField = false;
//   String? name;
//   TextEditingController  search = TextEditingController() ;

//   late CardsModel selectedDataModel;

//   SearchData searchData = SearchData(Get.find());
//   ImageData imageData = ImageData(Get.find());

//   late CardsModel dataModel;

//   @override
//   void onInit() {
//     getSearch(search.text);
   

//     update();

//     super.onInit();
//   }

 
//   @override
//   goToCardsDetails(CardsModel datamodel) {
//     Get.toNamed("/cardsdetails", arguments: {"datamodel": datamodel});
//   }

//   @override
//   getSearch( filt) async {
//     print(search.text)
// ;    statusRequest = StatusRequest.loading;
//     var response = await searchData.getData(filt!);
//     Map<String , dynamic> maSearch= jsonDecode(response);
//     statusRequest = handlingData(response);
//     if (statusRequest == StatusRequest.success && maSearch.containsKey("data")) {
//       log(response.data.toString());
//       searchResults = response.data['data'] ;
//       searchResults.addAll(response.data['data'] ) ;
//       update();
//     }
//     if(maSearch.containsKey("error")){
//       Get.dialog(Material(
//         child: Text("no results"),
//       )) ;
//       log("No search results matching");
//       update();
//     }
//      else {
//       statusRequest = StatusRequest.failure;
//     }
//   }
// }
