import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inputs de texto')),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: <Widget>[_createInput(), Divider(), _createPeople()],
      ),
    );
  }

  Widget _createInput() {
    //Direrencia en TextFild y TextFildForm es que el Form trabaja mejor con un
    //formulario pero en los dos se pueden validar.

    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        //Borde del input
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        //
        counter: Text('Letras ${_nombre.length}'),
        //sugerencia de texto que se borra cuando se captura la información.
        hintText: 'Aquí va tú nombre completo',
        // Etiqueta del TextField
        labelText: 'Nombre completo',
        //Icono que lleva el TextField al final
        suffixIcon: Icon(Icons.accessibility),
        //icono al inicio del textField
        icon: Icon(Icons.account_circle),
        // Texto de ayuda
        helperText: 'Solo es el nombre',
      ),

      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _createPeople() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
    );
  }
}
