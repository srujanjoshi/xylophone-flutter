import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int clipNumber) {
    final player = AudioCache();
    player.play("note$clipNumber.wav");
  }

  Expanded buildKey({Color color, int clipNumber}) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.zero,
        color: color,
        onPressed: () {
          playSound(clipNumber);
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
            children: <Widget>[
              buildKey(color: Colors.red, clipNumber: 1),
              buildKey(color: Colors.orange, clipNumber: 2),
              buildKey(color: Colors.yellow, clipNumber: 3),
              buildKey(color: Colors.green, clipNumber: 4),
              buildKey(color: Colors.teal, clipNumber: 5),
              buildKey(color: Colors.blue, clipNumber: 6),
              buildKey(color: Colors.purple, clipNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
