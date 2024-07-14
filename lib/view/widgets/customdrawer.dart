import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDrawer extends StatelessWidget {
  String? linkText1;
  String? linkText2;
  String? linkText3;
  String? linkText4;
  String? linkText5;
  String? linkText6;
  void Function()? onTap1 ;
  void Function()? onTap2 ;
  void Function()? onTap3 ;
  void Function()? onTap4 ;
  void Function()? onTap5 ;
  void Function()? onTap6 ;



  CustomDrawer(
      {super.key,
      this.linkText1,
      this.linkText2,
      this.linkText3,
      this.linkText4,
      this.linkText5,
      this.linkText6,
      this.onTap1,
      this.onTap2,
      this.onTap3,
      this.onTap4,
      this.onTap5,
      this.onTap6});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: onTap1,
          child: Text("$linkText1"),
        ),
        const Divider(),
        const SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: onTap2,
          child: Text("$linkText2"),
        ),
        const Divider(),
        InkWell(
          onTap: onTap3,
          child: Text("$linkText3"),
        ),
        const Divider(),
        InkWell(
          onTap: onTap4,
          child: Text("$linkText4"),
        ),
        const Divider(),
        InkWell(
          onTap: onTap5,
          child: Text("$linkText5"),
        ),
        const Divider(),
        InkWell(
          onTap: onTap6,
          child: Text("$linkText6"),
        ),
        const Divider(),
      ],
    ));
  }
}
