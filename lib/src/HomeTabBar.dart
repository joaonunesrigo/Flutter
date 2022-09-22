
import 'package:flutter/material.dart';
import './Home.dart';
import './Help.dart';


class HomeTabBar extends StatelessWidget{

  Widget build(BuildContext context){
    return DefaultTabController(
      length:2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Project'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.help),)
            ],
          ),
        ),

        body: TabBarView(
          children: [
             Home(),
             Help(),
        ]),
      ) 
    );
  }
}