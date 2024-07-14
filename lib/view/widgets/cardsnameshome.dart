import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/datacontroller.dart';
import 'package:yugiohdecklab/controller/home_controller.dart';
import 'package:yugiohdecklab/controller/searchnamecontroller.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';

class CardNameshome extends GetView {
  final CardsModel? datamodel ; 
  
  const CardNameshome({super.key,  this.datamodel});

  @override
  Widget build(BuildContext context) {
        

    return Column(
      children: [
        SingleChildScrollView(
          
          scrollDirection: Axis.horizontal,
            // height: 200,
            // width: 100,
            child: Text(
          "${datamodel!.name}",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ))
        
      ],
    );
  }
}
