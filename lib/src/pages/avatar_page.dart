/*Powered by Zharka 03/07/2020 */
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://danviet.mediacdn.vn/upload/4-2015/images/2015-12-16/1450251959-untitled-9.jpg'),
              radius: 22.0,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.greenAccent,
            ),
          )
        ],
      ),
      body: Center(
        //decoration: BoxDecoration(shape: BoxShape.circle),
        child: FadeInImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://danviet.mediacdn.vn/upload/4-2015/images/2015-12-16/1450251959-untitled-9.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
