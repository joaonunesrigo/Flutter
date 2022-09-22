import 'package:flutter/material.dart';

class Formulario extends StatefulWidget{
  @override

  _Formulario createState() => _Formulario();
}


class _Formulario extends State<Formulario>{ 
  final formkey = GlobalKey<FormState>();
    
    Widget build(BuildContext context){
      return Form(
        key: formkey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Digite seu nome'
              ),
              validator: (value) {
                  if(value!.isEmpty){
                    return 'campo obrigatório';
                }
              },
            ),

            ElevatedButton(
              onPressed:() {
                if(formkey.currentState!.validate()){
                  print('Formulário validado');
                }

                
              } , 
              child:Text('Enviar') )
          ],
        ),
      );
    }
}