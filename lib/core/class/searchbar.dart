// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_connect/sockets/src/socket_notifier.dart';
// import 'package:yugiohdecklab/controller/home_controller.dart';
// import 'package:yugiohdecklab/controller/searchnamecontroller.dart';
// import 'package:yugiohdecklab/core/class/statusrequest.dart';
// import 'package:yugiohdecklab/data/models/cardsmodel.dart';
// import 'package:yugiohdecklab/view/screens/cardsList.dart';
// import 'package:yugiohdecklab/view/widgets/cardsimages.dart';

// class searchBar extends SearchDelegate {
//   HomecontrollerImp controller = Get.put(HomecontrollerImp());
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     return [IconButton(onPressed: () {
//       query = "";
//     }, icon: Icon(Icons.close))];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
          
//           close(context, null);
//         },
//         icon: Icon(Icons.arrow_back));
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Text("data");
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
    
//     return GridView.builder(
//       itemCount: controller.data.length,
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 4, childAspectRatio: 0.4),
//       itemBuilder: (context, i) {
//         return Container(
//           child: GetBuilder<SearchNameControllerImp>(
//       builder: (controller) {
//         if (controller.statusRequest == StatusRequest.loading) {
//           return Center(child: CircularProgressIndicator());
//         } else if (controller.statusRequest == StatusRequest.offlinefailure) {
//           return const Text("offlinefailure");
//         } else {
//           return InkWell(
//             onTap: () {
//               //this is the page that i should transfer the data 
//               controller.goToCardsDetails(CardsModel.fromJson(controller.searchResults[i])) ;
//             },
//             child: Column(
//               children: [
                
//                 Column(
//                       children: [
//                         Card(
//                           color: Colors.white30,
//                           child: CardsImages(
//                               cardImages: ),
                               
//                           ),
//                         ),
//                         CardNameshome(
//                             datamodel: CardsModel.fromJson(controller.searchResults[index]),)
//                       ],
//                     ),
//               ],
//             )
//           );
//         }
//       },
//     );
//         );
//       },
//     );
//   }
// }
