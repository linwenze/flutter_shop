import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MemberPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center( 
        child: Container(
            width: ScreenUtil().setWidth(300),
            height: ScreenUtil().setWidth(370),
            alignment: Alignment.center,
            child: Stack(
              children: <Widget>[
                Column(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://avatar.csdn.net/D/0/D/3_weixin_30535565.jpg'),
                      radius: ScreenUtil().setWidth(150),
                    ),
                    Text('张三丰',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(40),
                    ),
                    ),
                  ],
                ),
                Positioned(
                    top: ScreenUtil().setWidth(230),
                    left: ScreenUtil().setWidth(230),
                    child: Container(
                      height: ScreenUtil().setWidth(70),
                      width: ScreenUtil().setWidth(70),
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(40),
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(ScreenUtil().setWidth(35))),
                          color: Colors.pink),
                    )),
              ],
            )),
      ),
    );
  }
}

// class FactoryWidget extends StatelessWidget {
//   const FactoryWidget({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RaisedButton(
//         child: Text('test'),
//         onPressed: _buttonClick,
//       ),
//     );
//   }
//   void _buttonClick(){
//     var data={
//     "data": [
//         {
//             "name": 'sdsd',
//             "num": 300
//         }
        
//     ]
// };
// ProductList product=ProductList.fromJson(data['data']);
// product.data.forEach((i)=>print(i.name));

//   }
// }

// class Products{
//   String name;
//   int num;
//   Products({
//     this.name,
//     this.num
//   });
//   factory Products.fromJson(dynamic json){
//     return Products(
//       name:json['name'],
//       num:json['num'],
//     );
//   }
// }
// class ProductList{
//   List data;
//   ProductList(this.data);
//   factory ProductList.fromJson(List arr){
//     return ProductList(
//         arr.map((i)=>Products.fromJson(i)).toList()
//     );
  
//   }
// }