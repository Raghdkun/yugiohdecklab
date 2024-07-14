import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/datacontroller.dart';
import 'package:yugiohdecklab/controller/home_controller.dart';

import '../../controller/searchnamecontroller.dart';

class SearchBarr extends StatelessWidget {
  String searchName ;
  void Function(String)? onChanged ;
   SearchBarr({super.key , required this.searchName ,  this.onChanged});

  @override
  Widget build(BuildContext context) {
    HomecontrollerImp controller = Get.put(HomecontrollerImp());

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder<HomecontrollerImp>(
          builder: (controller) => TextField(
            onSubmitted: onChanged ,
            smartQuotesType: SmartQuotesType.enabled,
            textCapitalization: TextCapitalization.words,
            controller: controller.searchTextController,
            decoration: InputDecoration(
              hintText: searchName,

              prefixIcon: const Icon(Icons.search),
              suffixIcon:controller.searchCards.isNotEmpty ? IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  controller.clearSearch();
                },
              ): null ,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            // textInputAction: TextInputAction.search,
            
          ),
        ));
  }
}
