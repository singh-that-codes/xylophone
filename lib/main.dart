import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x){
    final player=AudioCache();
    player.play('note$x.wav');
  }
  Expanded buildKey(int x,Color color){
     return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
        ),
        onPressed: (){
          playSound(x);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1,Colors.redAccent),
              buildKey(2,Colors.yellow),
              buildKey(3,Colors.blue),
              buildKey(4,Colors.green),
              buildKey(5,Colors.brown),
              buildKey(6,Colors.teal),
              buildKey(7,Colors.amber),

            ],
          ),
        ),
      ),
    );
  }
}
