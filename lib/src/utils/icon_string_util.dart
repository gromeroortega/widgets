import 'package:flutter/material.dart';

//Mapa de nombres e iconos.
final _icons = <String, IconData>{
  'add_alert': Icons.add_alarm,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input_outlined,
};

//getter que consulta
Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.cyan);
}
