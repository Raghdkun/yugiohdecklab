


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/duelarena_controller.dart';
import 'package:yugiohdecklab/core/constants/imagesassets.dart';
import 'package:yugiohdecklab/core/constants/responsive.dart';
import 'package:yugiohdecklab/view/widgets/playerscounts/player1count.dart';
import 'package:yugiohdecklab/view/widgets/playerscounts/player2count.dart';

class DuelArena extends StatelessWidget {
  const DuelArena({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DuelArenaController());
    return ResponsiveWidget(largeScreen: Scaffold(
      // bottomNavigationBar: GetBuilder<DuelArenaController>(builder: (controller) => Player1Count(),),
        appBar: AppBar(),
        body: GetBuilder<DuelArenaController>(
          builder: (controller) => ListView(
            children: [
              Container(
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          AppImageAsset.welcomeImg,
                          height: 250,
                          opacity: AlwaysStoppedAnimation(0.2),
                        )),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Player2Count(),
                          SizedBox(height: Get.height /4.5,), 
                          Player1Count()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )), mediumScreen: Scaffold(
      // bottomNavigationBar: GetBuilder<DuelArenaController>(builder: (controller) => Player1Count(),),
        appBar: AppBar(),
        body: GetBuilder<DuelArenaController>(
          builder: (controller) => ListView(
            children: [
              Container(
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          AppImageAsset.welcomeImg,
                          height: 250,
                          opacity: AlwaysStoppedAnimation(0.2),
                        )),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Player2Count(),
                          SizedBox(height: Get.height /4.5,), 
                          Player1Count()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )), smallScreen: Scaffold(
      // bottomNavigationBar: GetBuilder<DuelArenaController>(builder: (controller) => Player1Count(),),
        appBar: AppBar(),
        body: GetBuilder<DuelArenaController>(
          builder: (controller) => ListView(
            children: [
              Container(
                child: Stack(
                  children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          AppImageAsset.welcomeImg,
                          height: 250,
                          opacity: AlwaysStoppedAnimation(0.2),
                        )),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Player2Count(),
                          SizedBox(height: Get.height /4.5,), 
                          Player1Count()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
