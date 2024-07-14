// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yugiohdecklab/controller/datacontroller.dart';
// import 'package:yugiohdecklab/controller/home_controller.dart';
// import 'package:yugiohdecklab/controller/searchnamecontroller.dart';
// import 'package:yugiohdecklab/core/class/statusrequest.dart';
// import 'package:yugiohdecklab/data/models/cardsmodel.dart';
// import 'package:yugiohdecklab/view/screens/cardsList.dart';
// import 'package:yugiohdecklab/view/widgets/cardsimages.dart';
// import 'package:yugiohdecklab/view/widgets/cardsnameshome.dart';
// import 'package:yugiohdecklab/view/widgets/cardstile.dart';

// class Searchcards extends StatelessWidget {
//   const Searchcards({super.key});

//   @override
//   Widget build(BuildContext context) {
//     HomecontrollerImp controller = Get.put(HomecontrollerImp());

//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Search"),
//         ),
//         body: Column(children: <Widget>[
//           Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: GetBuilder<HomecontrollerImp>(
//                 builder: (controller) => TextField(
//                   decoration: InputDecoration(
//                     hintText: "Search for a card",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                   ),
//                   onChanged: (value) {
//                     controller.isSearch = true;
//                     controller.searchQuery = value;
//                     controller.filterData();
//                   },
//                 ),
//               )),
//           Expanded(child: GetBuilder<HomecontrollerImp>(builder: (_) {
//             if (_.data.isEmpty) {
//               print("no result");
//               return Center(
//                 child: CircularProgressIndicator(),
//               );
//             } else {}
//             return GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 childAspectRatio: 0.8,
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//               ),
//               itemCount: _.data.length,
//               itemBuilder: (context, i) {
//                 return GetBuilder<SearchNameControllerImp>(
//                   builder: (controller) {
//                     if (controller.statusRequest == StatusRequest.loading) {
//                       return Center(child: CircularProgressIndicator());
//                     } else if (controller.statusRequest ==
//                         StatusRequest.offlinefailure) {
//                       return const Text("offlinefailure");
//                     } else {
//                       return InkWell(
//                           onTap: () {
//                             //this is the page that i should transfer the data
//                             controller.goToCardsDetails(CardsModel.fromJson(
//                                 controller.searchResults[i]));
//                           },
//                           child: Column(
//                             children: [
//                               Column(
//                                 children: [
//                                   Card(
//                                     color: Colors.white30,
//                                     child: CardsImages(
//                                       cardImages: CardImages.fromJson(
//                                           controller.searchResults[i]),
//                                     ),
//                                   ),
//                                   CardNameshome(
//                                     datamodel: CardsModel.fromJson(
//                                         controller.searchResults[i]),
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ));
//                     }
//                   },
//                 );
//               },
//             );
//           }))
//         ]));
//   }
// }
