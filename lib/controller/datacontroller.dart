// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:get/get.dart';
// import 'package:yugiohdecklab/core/class/statusrequest.dart';
// import 'package:yugiohdecklab/core/functions/handelingdatacontroller.dart';
// import 'package:yugiohdecklab/data/datasourse/remote/searchdata.dart';
// import 'package:yugiohdecklab/data/models/cardsmodel.dart';
// import 'package:yugiohdecklab/view/screens/cards.dart';

// abstract class SearchDataController extends GetxController {
//   getsearch(String searchresult , String search);
// }

// class SearchDataControllerImp extends SearchDataController {
//   late CardsModel datamodel;
//   SearchData searchData = SearchData(Get.find()) ;
//   List cards = [];
//   StatusRequest statusRequest = StatusRequest.initial;

//   @override
//   getsearch( searchresult , search) async {
//     statusRequest = StatusRequest.loading;
//     var response = await searchData.getData();
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       cards.addAll(response['data']);
//     } else {
//       statusRequest = StatusRequest.failure;
//     }
//     update();
//   }

//   @override
//   void onInit() {
//   getsearch( );
//     update();

//     super.onInit();
//   }
// }
