import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void _playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded _buildWidget(Color color, int soundNumber) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            _playSound(soundNumber);
          },
          child: null,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildWidget(Colors.red, 1),
              _buildWidget(Colors.orange, 2),
              _buildWidget(Colors.yellow, 3),
              _buildWidget(Colors.green, 4),
              _buildWidget(Colors.blueGrey, 5),
              _buildWidget(Colors.blue, 6),
              _buildWidget(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
