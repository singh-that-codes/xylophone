// xylophone_app.dart
import 'package:flutter/material.dart';
import 'audio_util.dart';

class XylophoneApp extends StatelessWidget {
  void playSound(int noteIndex) {
    final player = AudioUtil();
    player.play('note$noteIndex.wav');
  }

  Expanded buildKey(int noteIndex, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(noteIndex);
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
            children: [
              buildKey(1, Colors.redAccent),
              buildKey(2, Colors.yellow),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.green),
              buildKey(5, Colors.brown),
              buildKey(6, Colors.teal),
              buildKey(7, Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
