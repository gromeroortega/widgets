/*Powered by Zharka 03/07/2020 */
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final respond = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(respond);
    //print(dataMap['rutas']);
    options = dataMap['rutas'];

    return (options);
  }
}

final menuProvider = new _MenuProvider();
