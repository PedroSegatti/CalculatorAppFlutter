import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);
  
  final String text;
  final bool big;
  final Color color;

  const Button({
    Key? key,
    required this.text,
    this.big = false, this.color = OPERATION,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: Container(
        color: color,
        child: ElevatedButton(
          onPressed: () {
            // Coloque sua lógica aqui
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.white, // Adicione a cor aqui
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Isso faz o botão ser quadrado
            ),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w200
              ),
            ),
          ),
        ),
      ),
    );
  }
}
