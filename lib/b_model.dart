


import 'package:flutter/cupertino.dart';

class BModel extends ChangeNotifier{

  String content = "";

  BModel(){
    content = "init b model";
  }

  setNewValue(String value){
    content = "b model : $value";
    notifyListeners();
  }

}