import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:yugiohdecklab/controller/home_controller.dart';

import 'package:yugiohdecklab/core/class/statusrequest.dart';

import 'package:yugiohdecklab/data/models/cardsmodel.dart';
import 'package:yugiohdecklab/view/widgets/cardsimages.dart';
import 'package:yugiohdecklab/view/widgets/cardsnameshome.dart';
import 'package:yugiohdecklab/view/widgets/searchbar.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    HomecontrollerImp controller = Get.put(HomecontrollerImp());

    return Scaffold(
        endDrawer: const Drawer(),
        appBar: AppBar(
          title: const Text("Cards Name Search"),
        ),
        body: Column(children: <Widget>[
          SearchBarr(
            onChanged: (searchName) {
              if (searchName.isNotEmpty) {
                controller.getSearch(searchName);
              }
            },
            searchName: "Search by name",
          ),
          Expanded(child: GetBuilder<HomecontrollerImp>(builder: (_) {
            if (_.data.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                  Center(
                    child: Text("loading all data may take some time.."),
                  )
                ],
              );
            } else {
              return GetBuilder<HomecontrollerImp>(
                builder: (controller) {
                  if (controller.searchCards.isEmpty) {
                    return const Center(
                      child: Text("no results found"),
                    );
                  } else if (controller.searchCards.isEmpty) {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: controller.data.length,
                      itemBuilder: (context, i) {
                        // log(message)
                        return GetBuilder<HomecontrollerImp>(
                          builder: (controller) {
                            if (controller.statusRequest ==
                                StatusRequest.loading) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (controller.statusRequest ==
                                StatusRequest.offlinefailure) {
                              return const Text("offlinefailure");
                            } else {
                              return InkWell(
                                  onTap: () {
                                    //this is the page that i should transfer the data
                                    controller.goToCardsDetails(
                                        CardsModel.fromJson(
                                            controller.data[i]));
                                  },
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Card(
                                            color: Colors.white30,
                                            child: CardsImages(
                                              cardImages: CardImages.fromJson(
                                                  controller.data[i]),
                                            ),
                                          ),
                                          //                                       CachedNetworkImage(
                                          //   imageUrl: controller.data[index].cardImages. ,width: 140,
                                          // );
                                          CardNameshome(
                                            datamodel: CardsModel.fromJson(
                                                controller.data[i]),
                                          )
                                        ],
                                      ),
                                    ],
                                  ));
                            }
                          },
                        );
                      },
                    );
                  } else {
                    return GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: controller.searchCards.length,
                      itemBuilder: (context, i) {
                        // log(message)
                        return GetBuilder<HomecontrollerImp>(
                          builder: (controller) {
                            if (controller.statusRequest ==
                                StatusRequest.loading) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            } else if (controller.statusRequest ==
                                StatusRequest.offlinefailure) {
                              return const Text("offlinefailure");
                            } else {
                              return InkWell(
                                  onTap: () {
                                    //this is the page that i should transfer the data
                                    controller.goToCardsDetails(
                                        CardsModel.fromJson(
                                            controller.searchCards[i]));
                                  },
                                  child: Column(
                                    children: [
                                      Column(
                                        children: [
                                          Card(
                                            color: Colors.white30,
                                            child: CardsImages(
                                              cardImages: CardImages.fromJson(
                                                  controller.searchCards[i]),
                                            ),
                                          ),
                                          //                                       CachedNetworkImage(
                                          //   imageUrl: controller.data[index].cardImages. ,width: 140,
                                          // );
                                          CardNameshome(
                                            datamodel: CardsModel.fromJson(
                                                controller.searchCards[i]),
                                          )
                                        ],
                                      ),
                                    ],
                                  ));
                            }
                          },
                        );
                      },
                    );
                  }
                },
              );
            }
          }))
        ]));
  }
}
