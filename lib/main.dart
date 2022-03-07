import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache();
  void playSound(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Expanded bulidKey({Color? coloor, int? noteNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(noteNumber!);
        },
        child: Container(
          color: coloor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                bulidKey(coloor: Colors.red, noteNumber: 1),
                bulidKey(coloor: Colors.orange, noteNumber: 2),
                bulidKey(coloor: Colors.yellow, noteNumber: 3),
                bulidKey(coloor: Colors.green, noteNumber: 4),
                bulidKey(coloor: Colors.teal, noteNumber: 5),
                bulidKey(coloor: Colors.blue, noteNumber: 6),
                bulidKey(coloor: Colors.purple, noteNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
