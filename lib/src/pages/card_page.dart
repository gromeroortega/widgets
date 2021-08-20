/*Powered by Zharka 08/07/2020 */

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[_card1(), SizedBox(height: 30.0), _card2()],
      ),
    );
  }

  Widget _card1() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            ListTile(
                leading: Icon(Icons.photo_album, color: Colors.black45),
                title: Text('algún texto X'),
                subtitle: Text(
                    'algún texto Y, pareciera que soy como X, pero no te dejes engañar, soy Y y no X')),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Aceptar'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('cancelar'),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ));
  }

  Widget _card2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://www.kolpaper.com/wp-content/uploads/2020/03/rick-and-morty-4k-wallpaper-scaled.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            //fadeInDuration: Duration(milliseconds: 200),
          ),
          Container(
              padding: EdgeInsets.all(20.0), child: Text('Rick and Morty'))
        ],
      ),
    );
  }
}
