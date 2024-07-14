import 'package:yugiohdecklab/core/class/crud.dart';
import 'package:yugiohdecklab/linkapi.dart';

class DecklistData {
  Crud crud;

  DecklistData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.server, {});
    return response.fold((l) => l, (r) => r);
  }
}
