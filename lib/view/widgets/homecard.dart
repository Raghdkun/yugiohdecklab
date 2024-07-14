import 'package:flutter/material.dart';



class HomeCard extends StatelessWidget {
  final String mainText ;
  final String image ;
  final void Function()? onTap ;

  const HomeCard({super.key, required this.mainText, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: onTap,
                    child: Container(
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Card(
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                          Image.asset(
                            image,
                            height: 130,
                          ),
                          Text(mainText),
                        ]),
                      ),
                    ),
                                  ),
                  );
  }
}

// Welcome To\nYugioh Duel \n Lab