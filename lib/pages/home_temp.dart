import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';



class HomePageTemp extends StatelessWidget {

  final opciones = [

    'opcion 1',

    'opcion 2',

    'opcion 3',

    'opcion 4',

    'opcion 5',

    'opcion 6'

  ];

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Componente Temporal 1'),

      ),

      body: _crearWidgets(context),

    );

  }



  ListView _crearWidgets(context) {

    return ListView.builder(

      itemCount: 6,

      itemBuilder: (_, opciones) {

        return ListTile(

          title: Text('Entra a la opcion!!!'),

          subtitle: Text('Subtitulo de la $opciones'),

          leading: Icon(Icons.account_box_rounded),

          trailing: Icon(Icons.keyboard_arrow_right_outlined),

          onTap: () {

            Navigator.push(context,

                MaterialPageRoute(builder: (context) => DetailPage(opciones)));

          },

        );

      },

    );

  }

}



class DetailPage extends StatelessWidget {

  final int opciones;

  DetailPage(this.opciones);

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: Text('Pagina nueva'),

      ),

      body: Center(

          child: Text(

        'Estos son los detalles de la opción $opciones',

        style: TextStyle(fontSize: 35),

      )),

    );

  }

}