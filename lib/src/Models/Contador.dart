import 'package:flutter/cupertino.dart';

class Contador with ChangeNotifier{
  int valor = 0;
  String nome = '';

  void aumentar(){
    valor++;
    notifyListeners();
  } 

}