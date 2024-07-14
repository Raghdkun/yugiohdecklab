// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yugiohdecklab/controller/datacontroller.dart';
// import 'package:yugiohdecklab/controller/home_controller.dart';
// import 'package:yugiohdecklab/core/class/statusrequest.dart';
// import 'package:yugiohdecklab/data/models/cardsmodel.dart';
// import 'package:yugiohdecklab/linkapi.dart';
// import 'package:yugiohdecklab/view/widgets/cardsimages.dart';
// import 'package:yugiohdecklab/view/widgets/cardsnameshome.dart';

// class CardTile extends GetView {
//   final CardsModel? card;
//   final int index ;


//   const CardTile(this.card ,{super.key,required this.index,  });

//   @override
//   Widget build(BuildContext context) {
//     HomecontrollerImp controller = Get.put(HomecontrollerImp()) ;
//     return GetBuilder<HomecontrollerImp>(
//       builder: (controller) {
//         if (controller.statusRequest == StatusRequest.loading) {
//           return Center(child: CircularProgressIndicator());
//         } else if (controller.statusRequest == StatusRequest.offlinefailure) {
//           return const Text("offlinefailure");
//         } else {
//           return InkWell(
//             onTap: () {
//               //this is the page that i should transfer the data 
//               // controller.goToCardsDetails(CardsModel.fromJson(controller.data[index])) ;
//             },
//             child: Column(
//               children: [
                
//                 Column(
//                       children: [
//                         Card(
//                           color: Colors.white30,
//                           child: CardsImages(
//                               cardImages: CardImages.fromJson(controller.data[index]),
                               
//                           ),
//                         ),
//                         CardNameshome(
//                             datamodel: CardsModel.fromJson(controller.data[index]),)
//                       ],
//                     ),
//               ],
//             )
//           );
//         }
//       },
//     );
//   }
// }