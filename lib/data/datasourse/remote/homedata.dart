import 'package:yugiohdecklab/core/class/crud.dart';
import 'package:yugiohdecklab/linkapi.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.server, {});
    return response.fold((l) => l, (r) => r);
  }
   getcards(String tcg) async {
    var response = await crud.postData(AppLink.server, {
      "tcgplayer_data" : tcg
    });
    return response.fold((l) => l, (r) => r);
  }
}
