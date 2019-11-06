import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'a_model.dart';
import 'b_model.dart';
import 'c_model.dart';


class NextPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NextPageState();
  }

}

class NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer3<AModel,BModel,CModel>(
      builder: (context,amodel,bmodel,cmodel,child){
        return Scaffold(
          body: Center(
            child: Column(
              children: <Widget>[
                Text(
                  "value of ${amodel.content}",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "value of ${bmodel.content}",
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  "value of ${cmodel.content}",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}