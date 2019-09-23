import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import '../provide/conter.dart';
import 'package:dio/dio.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import '../model/cart.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[Number(), MyButton(),Login(),UserInfo()],
      )),
    );
  }
}

class Number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 144),
      child: Provide<Counter>(
        builder: (context, child, counter) {
          return Text(
            '${counter.value}',
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
        onPressed: () {
          Provide.value<Counter>(context).increment();
        },
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('登录'),
        onPressed:(){
         _loginButton(context);
        } ,
      ),
    );
    
  }
  void _loginButton(BuildContext context){
     getHttp().then((val){
      var data=json.decode(val.toString());
      LoginInfo login =LoginInfo.fromJson(data);
      Provide.value<LoginSave>(context).save(login);
      print(login.data.token);
     });

  }
  Future getHttp() async {
    try {
      Dio dio = new Dio();
      Response response;
      var data = {
        'username': 'cheshangtongscrm',
        'password': '16888cst',
        'shareKey': 'r81gijbrs81o2ljrb8t87c1iv7'
      };
      dio.options.contentType =ContentType.parse("application/x-www-form-urlencoded");
      response = await dio.post('https://pcapi.test-chexiu.cn/site/login', data: data);
      return response;
    } catch (e) {
      return print(e);
    }
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
      margin: EdgeInsets.only(top: 44),
      child: Provide<LoginSave>(
        builder: (context, child, login) {
          if(login.value==null){
            return Text('您还没登录！',
            style: Theme.of(context).textTheme.display1,
            );
          }else{
            return Text( 
            '当前的token为:${login.value.data.token}',
            style: Theme.of(context).textTheme.display1,
            );
          }
        },
      ),
    );
  }
}