import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class BasicScreen extends StatefulWidget {
  const BasicScreen({super.key});

  @override
  State<BasicScreen> createState() => _BasicScreenState();
}

class _BasicScreenState extends State<BasicScreen> {
  double brushSize = 30; //tamanho do pincel que apaga a raspadinha 
  double progress = 0; //quanto ja raspou do quadrado
  bool thresholdReached = false; //limite de raspagem atingido
  bool enable = true; //permite continuar raspando
  double? size;
  final key = GlobalKey<ScratcherState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text("Reset"),
                onPressed: () {
                  key.currentState?.reset(
                    duration: const Duration(milliseconds: 2000),
                    );
                    setState(() {
                      thresholdReached = false;
                    });
                }
              )
            ],
          )
        ],
      )
    );
  }
}