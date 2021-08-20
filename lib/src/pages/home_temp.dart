/*Powered by Zharka 03/07/2020 */
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = [
    'Perro',
    'Gato',
    'Raton',
    'Dinosaurio',
    'Gorila',
    'Serpiente'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('holo!!!'),
      ),
      body: ListView(
        children: _createItemsShort(),
      ),
    );
  }

/*
  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>();

    for (String opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add(tempWidget)..add(Divider());
    }
    return list;
  }
*/
  List<Widget> _createItemsShort() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '*'),
            subtitle: Text('Subtitle'),
            leading: Icon(Icons.add_photo_alternate),
            trailing: Icon(Icons.arrow_right),
            onTap: (() {}),
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
