import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/decklist_controller.dart';
import 'package:yugiohdecklab/controller/home_controller.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';
import 'package:yugiohdecklab/view/widgets/decklistwidget.dart';

class DeckList extends StatelessWidget {
  const DeckList({super.key});

  @override
  Widget build(BuildContext context) {
    DeckListControllerImp controller = Get.put(DeckListControllerImp());

    HomecontrollerImp homeController = Get.put(HomecontrollerImp());
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: GetBuilder<DeckListControllerImp>(
          builder: (controller) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.cardslist.length,
                    itemBuilder: (context, i) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.cardslist[i].cardImages!.length,
                        itemBuilder: (context, i2) {
                          return CachedNetworkImage(
                            imageUrl:
                                "${controller.cardslist[i].cardImages![i2].imageUrl}",
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
