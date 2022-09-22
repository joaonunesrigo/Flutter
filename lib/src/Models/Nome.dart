import 'package:flutter/foundation.dart';

class Nome with ChangeNotifier{
  String nome = '';

  void ChangeName(NovoNome){
  nome = NovoNome;
  notifyListeners();

}
}

