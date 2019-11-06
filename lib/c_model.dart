


import 'package:flutter/cupertino.dart';
import 'a_model.dart';
import 'b_model.dart';


class CModel extends ChangeNotifier{


  String content = "";

  AModel aModel;
  BModel bModel;


  CModel(AModel aModel,BModel bModel){
    this.aModel = aModel;
    this.bModel = bModel;
    content = "${aModel.content}  combine  ${bModel.content}";
  }


  updateValue(String value){
    aModel.setNewValue(value);
    bModel.setNewValue(value);
    content = "${aModel.content}  combine  ${bModel.content}";
    notifyListeners();
  }

}