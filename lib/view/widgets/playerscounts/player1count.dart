import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yugiohdecklab/controller/duelarena_controller.dart';

class Player1Count extends GetView<DuelArenaController> {
  const Player1Count({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 60,
          width: 100,
          child: MaterialButton(
            color: Colors.black12,
            onPressed: () {
              controller.playerOneResult();
            },
            child: Text(
              "Enter",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: TextFormField(
              controller: controller.playerOne,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "${controller.one}",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintStyle: TextStyle(fontSize: 20),
              ),
            )),
        Container(
          height: 100,
          width: double.infinity,
          child: Card(
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Countup(
                    begin: 0,
                    end: controller.one.toDouble(),
                    curve: Curves.ease,
                    duration: Duration(milliseconds: 800),
                    style: TextStyle(fontSize: 80),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 50,
                        child: Card(
                          color: controller.playerplus1Click
                              ? Colors.black12
                              : Colors.white12,
                          child: IconButton(
                            icon: Icon(
                              Icons.add,
                            ),
                            onPressed: () {
                              controller.playerplus1Click = true ; 
                              
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Card(
                          color: controller.playermini1Click
                              ? Colors.black12
                              : Colors.white12,
                          child: IconButton(
                            icon: Icon(
                              Icons.remove,
                            ),
                            onPressed: () {
                              controller.onPlayer1ClickMini();
                            },
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
