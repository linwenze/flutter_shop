import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../service/service_method.dart';
import 'dart:convert';
import '../model/category.dart';
class CategoryPage extends StatefulWidget {
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('商品分类')),
      body:Container(
       child:Row(
         children: <Widget>[
           LeftCatgegoryNav()
         ],
       ),
     )
    );
  }
}
//左侧大类导航
class LeftCatgegoryNav extends StatefulWidget {
  _LeftCatgegoryNavState createState() => _LeftCatgegoryNavState();
}

class _LeftCatgegoryNavState extends State<LeftCatgegoryNav> {
  List list=[];
  @override
  void initState() {
    _getCategory();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(180),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(width: 1,color:Colors.black12)
        )
      ),
       child: ListView.builder(
         itemBuilder:(context,index){
           return _leftInkWell(index);
         } ,
         itemCount:list.length ,
       ),
    );
  }
  Widget _leftInkWell(int index){
    return InkWell(
      onTap: (){},
      child: Container(
        height: ScreenUtil().setHeight(100),
        padding: EdgeInsets.only(left:10,top:20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(width: 1,color: Colors.black12)
          )

        ),
        child: Text(list[index].mallCategoryName,style: TextStyle(fontSize: ScreenUtil().setSp(28)),),
      ),
    );
  }
  void _getCategory() async{
    await request('getCategory').then((val){
      var data=json.decode(val.toString());
      CatogoryModel category =CatogoryModel.fromJson(data);
      setState(() {
        list=category.data;
      });
     // list.data.forEach((item)=>print(item.mallCategoryName));

    });
    
  }
}