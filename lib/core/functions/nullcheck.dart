import 'package:get/get.dart';

import 'package:yugiohdecklab/data/models/cardsmodel.dart';

nullAtkDef(coulmnar , columnen){
   CardsModel dataModel = Get.find() ;
  if (dataModel.atk == "null" && dataModel.def == "null"   ){
    return coulmnar ;

  }else{
    return columnen ;

  }
}