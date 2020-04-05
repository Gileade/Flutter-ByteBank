import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controller;
  final String rotulo;
  final String hint;
  final IconData icone;

  //Dentro de Chaves, são valores não obrigatórios
  Editor({
    this.controller,
    this.rotulo,
    this.hint,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: hint,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
