import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/carddetails_controller.dart';

import 'package:yugiohdecklab/data/models/cardsmodel.dart';
import 'package:yugiohdecklab/linkapi.dart';
import 'package:readmore/readmore.dart';

class CardDetails extends GetView<CardDetailscontainerImp> {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CardDetailscontainerImp());
    Get.put(CardsModel());

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${controller.datamodel.name}",
                style: const TextStyle(fontSize: 22),
              ),
              controller.datamodel.attribute != null
                  ? Text(
                      "${controller.datamodel.attribute}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 15),
                    )
                  : Container(),
             const SizedBox(
                height: 15,
              ),
              CachedNetworkImage(
                imageUrl:
                    "${AppLink.imagescrop}/${controller.datamodel.id}.jpg",
                height: 300,
              ),
              Text(
                "${controller.datamodel.type}",
                style: const TextStyle(fontSize: 25),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${controller.datamodel.race} /",
                    style: const TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "${controller.datamodel.frameType}",
                    style: const TextStyle(fontSize: 25),
                  ),
                ],
              ),
              SingleChildScrollView(
                  child: ReadMoreText(
                "${controller.datamodel.desc}",
                trimLines: 2,
                textAlign: TextAlign.center,
                colorClickableText: Colors.black,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
                lessStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              )),
              controller.datamodel.atk != null &&
                      controller.datamodel.def != null
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ATK / ${controller.datamodel.atk} ",
                          style: const TextStyle(fontSize: 25),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "DEF / ${controller.datamodel.def}",
                          style: const TextStyle(fontSize: 25),
                        ),
                      ],
                    )
                  : Container(),

              //     Text(
              //   "${controller.cardprice.amazonPrice}",
              //   style: const TextStyle(fontSize: 17),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
