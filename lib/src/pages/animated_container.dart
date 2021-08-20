import 'dart:math';

import 'package:flutter/material.dart';

class ContainerAnimated extends StatefulWidget {
  @override
  _ContainerAnimatedState createState() => _ContainerAnimatedState();
}

class _ContainerAnimatedState extends State<ContainerAnimated> {
  double _width = 50.0;
  double _height = 20.0;
  Color _color = Colors.cyan;

  BorderRadiusGeometry _border = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Contenedor animado'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _border, color: _color),
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle, size: 55.0),
        onPressed: _changeForm,
      ),
    );
  }

  void _changeForm() {
    final random = Random();
    setState(() {
      _width = random.nextInt(316).toDouble();
      _height = random.nextInt(316).toDouble();
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
          random.nextInt(255), random.nextInt(80).toDouble());
      _border = BorderRadius.circular(random.nextInt(100).toDouble());

      //print('valores: $_width, $_height, $_border, $_color');
    });
  }
}
