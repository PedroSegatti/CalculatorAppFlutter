import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display extends StatelessWidget{
  final String text;

  const Display({super.key, required this.text});

@override
Widget build(BuildContext context) {
  return Expanded(
    flex: 1,
    child: Container(
      color: const Color.fromARGB(255, 48, 48, 48),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: AutoSizeText(
              'text',
              minFontSize: 20,
              maxFontSize: 80,
              maxLines: 1,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontWeight: FontWeight.w100,
                decoration: TextDecoration.none,
                fontSize: 80,
                color: Colors.white
              ),
            
            ),
          ),
        ],
      ),
    ),
  );
}
}