import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/conter.dart';
class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      Column(
        children: <Widget>[
          Number(),
          MyButton()
        ],
      )
      ),
    );
  }
}
class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 444),
      child:Provide<Counter>(
        builder: (context,child,counter){
          return  Text('${counter.value}',
          style: Theme.of(context).textTheme.display1,
          );
        },
      ),
    );
  }
}
class MyButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('递增'),        
        onPressed: (){
         
          Provide.value<Counter>(context).increment();
        },
      ),
    );
  }
}