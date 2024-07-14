import 'package:yugiohdecklab/core/class/crud.dart';
import 'package:yugiohdecklab/linkapi.dart';

class ImageData {
  Crud crud;

  ImageData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.images, {});
    return response.fold((l) => l, (r) => r);
  }

  
}
