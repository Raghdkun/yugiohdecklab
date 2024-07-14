import 'dart:convert';
import 'dart:developer';

import 'package:yugiohdecklab/core/class/crud.dart';
import 'package:yugiohdecklab/linkapi.dart';
import 'package:http/http.dart' as http;

class SearchData {
  Crud crud;

  SearchData(this.crud);

  getData(String filt) async {
    // var response = await crud.postData(AppLink.namesearch, {
      
    // });
     var response = await http.get(Uri.parse("https://db.ygoprodeck.com/api/v7/cardinfo.php?name=$filt"));
    //  Map<String ,dynamic> _response=jsonDecode(response.body);
    log("${response.reasonPhrase} Search results");
    return response.body;

    // return _response.fold((l) => l, (r) => r);
  }
}
