import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:yugiohdecklab/core/constants/imagesassets.dart';
import 'package:yugiohdecklab/core/constants/routes.dart';
import 'package:yugiohdecklab/view/widgets/customdrawer.dart';
import 'package:yugiohdecklab/view/widgets/homecard.dart';

import 'view/widgets/searchbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          // width: Get.width /1.1,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: Card(
                  child: Container(
                    height: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(
                        //   width: 10,
                        // ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome To\nYugioh Duel \n Lab",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppImageAsset.welcomeImg,
                              height: 150,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: [
                  HomeCard(
                    mainText: "Duel Arena",
                    image: AppImageAsset.welcomeImg,
                    onTap: () {
                      Get.toNamed(AppRoute.duelarena) ;
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
