import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MusicApp());

class MusicApp extends StatefulWidget {
  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  Color barColor = Colors.blue;

  Widget flatButtonBuilder(
    Color color,
    String note,
  ) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          setState(() {
            barColor = color;
          });

          final player = AudioCache();
          player.play(note);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: barColor,
          title: Text('Music App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            flatButtonBuilder(Colors.red, 'note1.wav'),
            flatButtonBuilder(Colors.orange, 'note2.wav'),
            flatButtonBuilder(Colors.yellow, 'note3.wav'),
            flatButtonBuilder(Colors.green, 'note4.wav'),
            flatButtonBuilder(Colors.blue, 'note5.wav'),
            flatButtonBuilder(Colors.indigo, 'note6.wav'),
            flatButtonBuilder(Colors.pinkAccent, 'note7.wav'),
          ],
        ),
      ),
    );
  }
}
