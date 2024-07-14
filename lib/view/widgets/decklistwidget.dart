import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/data/models/cardsmodel.dart';

class DecksListWidget extends StatelessWidget {
 final CardSets cardssets ;

  const DecksListWidget({super.key, required this.cardssets});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              width: Get.width,
              padding: const EdgeInsets.only(top: 25, right: 15),
              child: Center(
                child: Stack(clipBehavior: Clip.none, children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 2, color: Colors.white)),
                    width: 350,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: ListTile(
                      title: const Text("Yugioh Deck",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      subtitle: Text("${cardssets.setName}",
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                  ),
                  Positioned(
                    top: -7,
                    right: -20,
                    child: Container(
                        width: 113,
                        height: 113,
                        decoration: BoxDecoration(
                            color: const Color(0xff355afd),
                            borderRadius: BorderRadius.circular(160),
                            border: Border.all(width: 3, color: Colors.white))),
                  )
                ]),
              ),
            ),
          ],
        );
  }
}
