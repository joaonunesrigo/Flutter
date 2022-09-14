import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  btn({
    this.icon,
    this.onpress,
    this.text,
  });

  final icon;
  var text;
  final onpress;

  

  Widget build(BuildContext context) {
    if(text == null){
      text = ('Texto não definido');
    }

  
    return TextButton(
        onPressed: onpress,
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.blue,
            ),
            Text(text),
          ],
        ));
  }
}
