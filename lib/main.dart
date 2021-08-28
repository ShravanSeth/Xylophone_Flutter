import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


Expanded bkey (Color col, int x){
  return Expanded(
    child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(col)),
      onPressed:(){
        final player = AudioCache();
        player.play('note$x.wav');
      },
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              bkey(Colors.red,1),
              bkey(Colors.orange,2),
              bkey(Colors.yellow,3),
              bkey(Colors.green,4),
              bkey(Colors.blue,5),
              bkey(Colors.indigo,6),
              bkey(Colors.purple,7),
             ]
          ),
        ),
      ),
    );
  }
}
