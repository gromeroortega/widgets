/*Powered by Zharka 03/07/2020 */
import 'package:flutter/material.dart';
import 'package:practica2_comp_flutter/src/providers/menu_provider.dart';
import 'package:practica2_comp_flutter/src/utils/icon_string_util.dart';
import 'package:practica2_comp_flutter/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((opt) {
      final createW = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.cyan,
        ),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          /*final route = MaterialPageRoute(
            builder: (context) => AlertPage()
          );
          Navigator.push(context, route);*/
        },
      );
      options..add(createW)..add(Divider());
    });

    return options;
  }
}
