import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophonePage());
}

class XylophonePage extends StatelessWidget {
  final player = AudioCache();

  void playMusic(int note) {
    player.play('note$note.wav');
  }

  Widget buildKey(int note, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playMusic(note);
          // final player = AudioCache();
          // player.play('note1.wav');
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
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.deepPurple),
                buildKey(2, Colors.purple),
                buildKey(3, Colors.blue),
                buildKey(4, Colors.green),
                buildKey(5, Colors.yellow),
                buildKey(6, Colors.orange),
                buildKey(7, Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
