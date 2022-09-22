import 'package:flutter/material.dart';


class Login extends StatefulWidget{

  @override

  _Login createState() => _Login();
}

class _Login extends State<Login>{
final   formkey = GlobalKey<FormState>();

String email = '';
String senha = '';
    
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),

       body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: ('Digite seu e-mail'),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Campo Obrigatório';
                  }
                },
                onSaved : (txt){
                  setState(() {
                    email = txt!;
                  });
                } ,
              ),
                TextFormField(
                  obscureText: true,
                decoration: InputDecoration(
                  hintText: ('Digite sua senha'),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return 'Campo Obrigatório';
                  }
                  if(value.length < 4){
                    return 'Senha muito curta';
                  }
                },

                 onSaved : (txt){
                  setState(() {
                    senha = txt!;
                  });
                } ,
              ),

               ElevatedButton(
              onPressed:() {
                if(formkey.currentState!.validate()){
                  formkey.currentState!.save();
                }
              } , 
              child:Text('Enviar') ),
              
            Text('E-mail: $email'),
            Text('Senha: $senha'),
            ],
          ),
          

         )
      ),

    );

}

}
