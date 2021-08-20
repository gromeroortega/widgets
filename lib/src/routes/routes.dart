/*Powered by Zharka 03/07/2020 */
import 'package:flutter/material.dart';

import 'package:practica2_comp_flutter/src/pages/alert_page.dart';
import 'package:practica2_comp_flutter/src/pages/animated_container.dart';
import 'package:practica2_comp_flutter/src/pages/avatar_page.dart';
import 'package:practica2_comp_flutter/src/pages/card_page.dart';
import 'package:practica2_comp_flutter/src/pages/home_page.dart';
import 'package:practica2_comp_flutter/src/pages/inputs_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animated': (BuildContext context) => ContainerAnimated(),
    'inputs': (BuildContext context) => InputsPage()
  };
}
