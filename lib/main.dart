import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumb){
    final player = AudioCache();
    player.play('note$soundNumb.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  playSound(1);
                },
                child: Text('b1'),
                color: Colors.red,
              ),
              FlatButton(
                onPressed: () {
                  playSound(2);
                },
                child: Text('b2'),
                color: Colors.orange,
              ),
              FlatButton(
                onPressed: () {
                  playSound(3);
                },
                child: Text('b3'),
                color: Colors.yellow,
              ),
              FlatButton(
                onPressed: () {
                  playSound(4);
                },
                child: Text('b4'),
                color: Colors.green,
              ),
              FlatButton(
                onPressed: () {
                  playSound(5);
                },
                child: Text('b5'),
                color: Colors.teal,
              ),
              FlatButton(
                onPressed: () {
                  playSound(6);
                },
                child: Text('b6'),
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () {
                  playSound(7);
                },
                child: Text('b7'),
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
