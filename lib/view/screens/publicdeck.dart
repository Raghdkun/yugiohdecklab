import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/home_controller.dart';
import 'package:yugiohdecklab/core/class/statusrequest.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';
import 'package:yugiohdecklab/view/widgets/cardsnameshome.dart';

import '../widgets/cardsimages.dart';

class PublicDeck extends StatelessWidget {
  const PublicDeck({super.key});

  @override
  Widget build(BuildContext context) {
    // HomecontrollerImp controller = Get.put(HomecontrollerImp());

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Deck Viewer"),
        ),
        body: GetBuilder<HomecontrollerImp>(
          builder: (controller) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 0.6,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 8,
                          ),
                          itemCount: 50,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                CachedNetworkImage(
                                  imageUrl:
                                      "https://images.ygoprodeck.com/images/cards/86988864.jpg",
                                  width: 120,
                                ),
                              ],
                            );
                          },
                        )),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Divider(
                              color: Colors.purple,
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              "Deck Name",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text("Number Of Cards: 50"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
