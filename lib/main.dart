import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildKey(Colors.red,1),
              _buildKey(Colors.orange,2),
              _buildKey(Colors.yellow,3),
              _buildKey(Colors.green,4),
              _buildKey(Colors.teal,5),
              _buildKey(Colors.blue,6),
              _buildKey(Colors.purple,7),
            ],
          ),
        ),
      ),
    );
  }
}

void playSound(int soundNumber){
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

Widget _buildKey(Color color,int soundNumber) {
  return Expanded(
    child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
          playSound(soundNumber);
        },
        )
    ),
  );
}