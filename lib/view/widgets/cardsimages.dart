// ignore_for_file: unnecessary_null_comparison

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/home_controller.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';
import 'package:yugiohdecklab/linkapi.dart';


class CardsImages extends StatelessWidget {
  final  CardImages? cardImages;
  
  const CardsImages({super.key, this.cardImages,   }) ;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "${AppLink.images}/${cardImages!.id}.jpg" ,width: 140,
    );
  }
}