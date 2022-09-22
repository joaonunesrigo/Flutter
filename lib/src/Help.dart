import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Models/Contador.dart';

class Help extends StatelessWidget{
  
  Widget build(BuildContext context){


    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
      ),

      body: Center(
        child:
        Consumer<Contador>(
          builder: (context, contador, child) =>
          Text('Nome : ${contador.nome}') 
          ),
      )
    );
  }
}