
import 'package:provider/provider.dart';

import 'a_model.dart';
import 'b_model.dart';
import 'c_model.dart';


 List<SingleChildCloneableWidget> providers = [
   ...independentProvider,
   ...proxyProviders

 ];


 List<SingleChildCloneableWidget> independentProvider = [
   ChangeNotifierProvider<AModel>.value(value: AModel()),
   ChangeNotifierProvider<BModel>.value(value: BModel()),

 ];


 List<SingleChildCloneableWidget> proxyProviders = [
   ChangeNotifierProxyProvider2<AModel,BModel,CModel>(
     builder: (context,amodel,bmodel,cmodel) => cmodel ?? CModel(amodel,bmodel),
   )
 ];