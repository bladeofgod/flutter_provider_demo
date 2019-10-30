import 'package:flutter/material.dart';
import 'package:flutter_provider_demo/a_model.dart';
import 'package:flutter_provider_demo/b_model.dart';
import 'package:flutter_provider_demo/c_model.dart';
import 'package:flutter_provider_demo/global_providers.dart' as prefix0;
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: prefix0.providers,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String info = "";


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer3<AModel,BModel,CModel>(
      builder: (context,amodel,bmodel,cmodel,child){
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    "$info",
                    style: TextStyle(
                        fontSize: 20,color: Colors.black
                    ),
                  ),
                  RaisedButton(
                    onPressed: (){
                      setState(() {
                        info = "${amodel.content}";
                      });
                    },
                    child: Text("show a model"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      setState(() {
                        info = "${bmodel.content}";
                      });
                    },
                    child: Text("show b model"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      setState(() {
                        info = "${cmodel.content}";
                      });
                    },
                    child: Text("show c model"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}
























