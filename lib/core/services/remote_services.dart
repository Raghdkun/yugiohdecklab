// import 'dart:convert';

// import 'package:yugiohdecklab/data/models/cardsinfo.dart';
// import 'package:http/http.dart' as http;
// import 'package:yugiohdecklab/linkapi.dart';

// class RemoteData {
//   Future<CardsInfo?> getDataApi() async {
//     var client = http.Client();
//     var uri = Uri.parse(AppLink.server);
//     var response = await client.get(uri);
//     if (response.statusCode == 200) {
//       var json = response.body;
//       final data = jsonDecode(json);
//       return data['data'];
//     }
//     return null;
//   }
// }
