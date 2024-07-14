import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:yugiohdecklab/core/class/statusrequest.dart';
import 'package:yugiohdecklab/core/functions/handelingdatacontroller.dart';
import 'package:yugiohdecklab/core/services/services.dart';

import 'package:yugiohdecklab/data/datasourse/remote/homedata.dart';
import 'package:yugiohdecklab/data/datasourse/remote/imagedata.dart';
import 'package:yugiohdecklab/data/models/cardsinfo.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';

abstract class Homecontroller extends GetxController {
  getdata();

  intialData();
  getSearch(String searchName);
  clearSearch();

  goToCardsDetails(CardsModel cardsModel);

  StatusRequest statusRequest = StatusRequest.initial;
}

class HomecontrollerImp extends Homecontroller {
  MyServices myServices = Get.find();

  List dropdownItems = [
  const DropdownMenuItem(
    child: Text("Item 1"),
    value: "item1",
  ),
  const DropdownMenuItem(
    child: Text("Item 2"),
    value: "item2",
  ),
  const DropdownMenuItem(
    child: Text("Item 3"),
    value: "item3",
  ),
];

  var data = [];

  List<CardsModel> cards = [] ;
  

  List filteredData = [];
  bool isSearch = false;

  String? cardName;
  String? cardImage;
  //search
  var searchCards = [];
  TextEditingController searchTextController = TextEditingController();

  @override
  intialData() {
    cardName = myServices.sharedPreferences.getString("name");
    cardImage = myServices.sharedPreferences.getString("image_url");
  }

  String? cardId;
  late CardsModel selectedDataModel;

  HomeData homeData = HomeData(Get.find());
  ImageData imageData = ImageData(Get.find());

  late CardsModel dataModel;
  late CardPrices cardprice;

  @override
  void onInit() {
    getdata();

    clearSearch();
    intialData();
  String sbn = "search" ; 
    update();

    super.onInit();
  }
  

  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData();
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      data.addAll(response['data']);
      // myServices.sharedPreferences.setString("name", response['data']['id']);
      // myServices.sharedPreferences.setString("name", response['data']['name']);
    } else {
      statusRequest = StatusRequest.failure;
    }
    update();
  }

  @override
  goToCardsDetails(
    CardsModel cardsModel,
  ) {
    Get.toNamed("/cardsdetails", arguments: {
      "datamodel": cardsModel,
    });
  }

  @override
  clearSearch() {
    searchTextController.clear();
    getSearch("");
    update();
  }

  @override
  getSearch(searchName) {
    searchCards = data.where((search) {
      var searchTitile = search['name'].toLowerCase().toString();
      // var searchType = search['type'].toLowerCase().toString();
      // var searchArchetype = search['archetype'].toLowerCase().toString();


      searchName = searchName.toLowerCase().toString() ;
      return searchTitile.contains(searchName)  ;
    }).toList();

    update();
  }
}
