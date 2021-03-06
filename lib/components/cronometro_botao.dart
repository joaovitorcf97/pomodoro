import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;

  const CronometroBotao({
    Key? key,
    required this.texto,
    required this.icone,
    this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 24,
        ),
        textStyle: const TextStyle(fontSize: 16),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(icone),
          ),
          Text(texto),
        ],
      ),
    );
  }
}
