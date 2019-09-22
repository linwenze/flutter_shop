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
                              Radius.circular(ScreenUtil().setWidth(100))),
                          color: Colors.pink),
                    )),
              ],
            )),
      ),
    );
  }
}
