


import 'package:flutter/cupertino.dart';

class AModel extends ChangeNotifier{

  String content = "";

  AModel(){
    content = "init a model";
  }

  setNewValue(String value){
    content = "a model $value";
    notifyListeners();
  }

}