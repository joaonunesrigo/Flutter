
import 'package:app1/src/Login.dart';
import 'package:app1/src/Models/Nome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/Models/Contador.dart';
import 'src/Help.dart';
import 'src/Home.dart';
import 'src/Form.dart';
import 'src/HomeTabBar.dart';




void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Contador(),
      ),
       ChangeNotifierProvider(
        create: (context) => Nome(),
      ),
    ],

    child: MeuApp(),
  )
);

class MeuApp extends StatelessWidget {
  var contatos = [
    'João',
    'Paulo',
    'Jorge',
    'Douglas',
    'Leonardo',
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/home' : (context) => Home(),
          '/help' : (context) => Help(),
          '/form' : (context) => Login(),
        },
        initialRoute: '/home',
        );
      }
    }
