
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratchBox extends StatefulWidget {
  ScratchBox({
    required this.image,
    this.onScratch,
    this.animation,
  });

  final String image;
  final VoidCallback? onScratch;
  final Animation<double>? animation;

  @override
  State<ScratchBox> createState() => _ScratchBoxState();
}

class _ScratchBoxState extends State<ScratchBox> {
  bool isScratched = false;
  double opacity = 0.5;
  @override
  Widget build(BuildContext context) {
    var icon = AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 750),
      child: Image.asset(
        widget.image,
        width: 70.0,
        height: 70.0,
        fit: BoxFit.contain,
      ),
    );

    return Container(
      width:  80.0, // o quadrado tera 80 de largura e altura
      height: 80.0,
      margin: const EdgeInsets.all(10.0), // mas tera uma margem de 10
      //esse é o componente que permite a raspagem
      child: Scratcher(
        accuracy: ScratchAccuracy.low,
        color: Colors.blueGrey,
        image: Image.asset('assets/scratch.png'), //essa imagem ainda nao existe
        brushSize: 15, //tamnho do cursor da raspagem
        threshold: 60, //limite minimo para considerar raspado
        //identifica se o quadrado foi raspado
        onThreshold: (){
          //altera valores na memoria
          setState((){
            opacity = 1;
            isScratched = true; // considera o quadrado raspado
          });
          widget.onScratch?.call();
        },
        child: Container(
          // define se mostra a tampa do quadrado ou a imagem
          child: widget.animation == null
          ? icon
          : ScaleTransition(
            scale: widget.animation!,
            child: icon,
            ),
        ),
      ),
    );
  }
}  