import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  final colors = <Color>[
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return ListView.builder(
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () => player.play('note${index + 1}.wav'),
                    child: Container(
                      color: colors[index],
                      height: constraints.maxHeight / colors.length,
                    ),
                  );
                },
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: colors.length,
              );
            },
          ),
        ),
      ),
    );
  }
}
