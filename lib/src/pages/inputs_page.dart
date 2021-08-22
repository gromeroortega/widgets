import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _date = '';

  // Este controlador funciona como una propiedad que permite interactuar con el
  //TextField de fecha para enviar y recibir argumentos
  TextEditingController _dateField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text(
            'Inputs de texto',
          )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createPeople(),
        ],
      ),
    );
  }

  Widget _createInput() {
    //Direrencia en TextFild y TextFildForm es que el Form trabaja mejor con un
    //formulario pero en los dos se pueden validar.

    return TextField(
      //autofocus: true,

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
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      elevation: 10.0,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Colors.cyan,
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.white,
            title: Text(
              _nombre,
              style: TextStyle(fontSize: 20.0),
            ),
            subtitle: Text(_email, style: TextStyle(fontSize: 16.0)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _date,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createEmail() {
    return TextField(
      //autofocus: true,
      //Tipo del texto que recibe el TextField
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        //Borde del input
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        //
        counter: Text('Catracteres ${_email.length}'),
        //sugerencia de texto que se borra cuando se captura la información.
        hintText: 'Aquí va tu E-mail',
        // Etiqueta del TextField
        labelText: 'Email',
        //Icono que lleva el TextField al final
        suffixIcon: Icon(Icons.alternate_email),
        //icono al inicio del textField
        icon: Icon(Icons.email_sharp),
        // Texto de ayuda
        helperText: 'Solo es el email',
      ),

      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _createPassword() {
    return TextField(
      //autofocus: true,
      //Habilita que se oculten los caracteres que se escribieron.
      obscureText: true,
      decoration: InputDecoration(
        //Borde del input
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        //
        counter: Text('Letras ${_password.length}'),
        //sugerencia de texto que se borra cuando se captura la información.
        hintText: 'Aquí va el password',
        // Etiqueta del TextField
        labelText: 'Password',
        //Icono que lleva el TextField al final
        suffixIcon: Icon(Icons.lock_open),
        //icono al inicio del textField
        icon: Icon(Icons.lock),
        // Texto de ayuda
        helperText: 'Solo es el password',
      ),

      onChanged: (valor) {
        setState(() {
          _password = valor;
        });
      },
    );
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      //Asigna el controlador al TextField para crear la comunicación entre ellos.
      controller: _dateField,
      //Evita que se pueda copiar la información???
      enableInteractiveSelection: true,
      decoration: InputDecoration(
        //Borde del input
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        //sugerencia de texto que se borra cuando se captura la información.
        hintText: 'Fecha de nacimiento',
        // Etiqueta del TextField
        labelText: 'Fecha',
        //Icono que lleva el TextField al final
        suffixIcon: Icon(Icons.date_range),
        //icono al inicio del textField
        icon: Icon(Icons.calendar_today),
        // Texto de ayuda
        helperText: 'Solo es el password',
      ),

      onTap: () {
        //quitar el foco
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
        setState(() {});
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        //A fecha inicial se le asigna la fecha actual
        initialDate: new DateTime.now(),
        //Limita la seleccion: Evita que se seleccione una fecha anterior a la
        //al año especificado
        firstDate: new DateTime(2018),
        lastDate: new DateTime.now(),
        locale: Locale('es', ''));

    if (picked != null) {
      setState(() {
        String onlydate = picked.toString();

        _date = onlydate.substring(0, 10);
        _dateField.text = _date;
      });
    }
  }
}
