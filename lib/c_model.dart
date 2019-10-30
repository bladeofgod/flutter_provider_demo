


import 'package:flutter/cupertino.dart';
import 'a_model.dart';
import 'b_model.dart';


class CModel extends ChangeNotifier{


  String content = "";

  CModel(AModel aModel,BModel bModel){

    content = "${aModel.content}  combine  ${bModel.content}";

  }
}