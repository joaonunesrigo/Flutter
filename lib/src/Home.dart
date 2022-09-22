import 'package:app1/src/Models/Contador.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './Models/Contador.dart';
import './Help.dart';
import 'Models/Nome.dart';
import 'Form.dart';

class Home extends StatelessWidget{


  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),

      body: Center(
        child:Container(
          padding: EdgeInsets.only(top: 100),
            child:Column(
              children: [
                Text('Bem vindo ao App', style: TextStyle(fontSize: 30),),
                SizedBox(height: 50),
                 ElevatedButton(onPressed:(() {
                  Navigator.pushNamed(context, '/form');
                })
                , child: Text('Fazer Login'))
              ]
            ),
          ),
      )
    
    );
  }

}