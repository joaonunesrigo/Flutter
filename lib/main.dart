import 'package:flutter/material.dart';
import 'btn.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  var textStyle =
      TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold);

  botaoAction() {
    print('Clicou no botão');
  }

  Widget build(BuildContext context) {

    return MaterialApp(
      
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20)
          )
      
      ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              
                title: Center(
              child: Text('App Bar'),
            )),
            body: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Image.asset('assets/paisagem.jpg'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kotel',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Text(
                            'Jerusalem, Israel',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.blue,
                          ),
                          Text('9.876'),
                        ],
                      ),
                    )
                  ],
                ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Row(
                        children: [
                          Expanded(child: 
                           Column(
                            children: [
                            btn(
                              icon: Icons.call,
                              text: 'Ligar',
                              onpress: (){},
                              
                            )
                            ],
                          ),
                          ),
                           Expanded(child: 
                           Column(
                            children: [
                               btn(
                                icon:Icons.location_on,
                                text: ('Mapa'),
                               )
                            ],
                          ),
                          ),
                           Expanded(child: 
                           Column(
                            children: [
                             btn(
                                icon:Icons.share,
                                text: ('Compartilhar'),
                             )
                            ],
                          ),
                          
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
                    )
              ],
            )));
  }
}
