import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DuelArenaController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TextEditingController playerOne;
  late TextEditingController playerTow;
  var res1 ;
  var res2;

  bool playerplus1Click = false;
  bool playermini1Click = false;

  bool playerplus2Click = false;
  bool playermini2Click = false;
  var one = 8000;
  var tow = 8000;

  Animation? animation;
  AnimationController? animationController;



  playerOneResult(){
    if (playerplus1Click == false){
      res1 = int.parse(playerOne.text) + one ;
      playermini1Click = false ; 
      res1 = int.parse(playerOne.text) ; 
      update();
    }else {
      one - int.parse(playerOne.text);
      playerplus1Click = false ;
      update();
    }

  }

  onPlayer1ClickPlus() {
    playermini1Click = false;
    update();

    playerplus1Click = true;
    print("$playerplus1Click plus ");
    print("$playermini2Click mini");

    update();
  }

  onPlayer2ClickPlus() {
    playermini2Click = false;
    update();

    playerplus2Click = true;
    print("$playerplus1Click plus");
    print("$playermini2Click mini");

    update();
  }

  onPlayer1ClickMini() {
    playermini1Click = true;
    update();

    playerplus1Click = false;

    update();
  }

  onPlayer2ClickMini() {
    playermini2Click = true;
    update();

    playerplus2Click = false;

    update();
  }

  playerOnePlusResult() async {
    var res = int.parse(playerOne.text) + one;
    one = res;
    playerOne.clear();

    update();
  }

  playerTowPlusResult() async {
    var res1 = int.parse(playerTow.text) + tow;
    one = res1;
    playerTow.clear();

    update();
  }

  playerOneMiniResult() async {
    var res = one - int.parse(playerOne.text);
    one = res;
    playerOne.clear();

    update();
  }

  playerTowMiniResult() async {
    var res2 = tow - int.parse(playerTow.text);
    one = res2;
    playerTow.clear();
    update();
  }

  
  enterFun() {
    if (playermini1Click == true || playerplus1Click == true) {
      return playerOnePlusResult();
    } else {
      return playerOneMiniResult();
    }
  }

  enterFun2() {
    if (playermini2Click == true || playerplus2Click == true) {
      return playerTowPlusResult();
    } else {
      return playerTowMiniResult();
    }
  }

  @override
  void onInit() {
    playerOne = TextEditingController();
    playerTow = TextEditingController();
    playerplus1Click = false;
    playermini1Click = false;
    playermini2Click = false;
    playerplus2Click = false;

    //  one = int.parse(playerOne.text) ;
    //  tow = int.parse(playerTow.text);

    super.onInit();
  }
}



















// openInkWell() {
//     Get.bottomSheet(
//       elevation: 0,
//       barrierColor: Colors.transparent,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 110),
//           child: Center(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 30),
//               height: 80,
//               child: Card(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                         width: 50,
//                         child: TextField(
//                           controller: playerOne,
//                         )),
//                     Container(
//                       height: 50,
//                       width: 80,
//                       child: Card(
//                         color: Colors.black12,
//                         child: Center(
//                           child: Text(
//                             "Enter",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 fontSize: 15, fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }