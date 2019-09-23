import 'package:flutter/material.dart';
import './pages/index_page.dart';
import 'package:provide/provide.dart';
import './provide/conter.dart';
void main(){
  var counter=Counter();
  var loginSave=LoginSave();
  var providers=Providers();
  providers..provide(Provider<Counter>.value(counter));
  providers..provide(Provider<LoginSave>.value(loginSave));
  runApp(ProviderNode(child:MyApp(),providers:providers));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child:MaterialApp(
        title: '百姓生活',
        // debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primaryColor: Colors.pink
        ),
        home:IndexPage()
       )
    );
  }
}