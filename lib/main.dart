/*Powered by Zharka 03/07/2020 */
import 'package:flutter/material.dart';

//importaciones propias
//import 'package:practica2_comp_flutter/src/pages/home_temp.dart';
import 'package:practica2_comp_flutter/src/pages/alert_page.dart';
import 'package:practica2_comp_flutter/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (setting) {
        print('Ruta llamada: ${setting.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
