
import 'package:copa/Vis%C3%A3o/tela_detalhes.dart';
import 'package:flutter/material.dart';
import '../modelo/Jogador.dart';

class Card_jogador extends StatelessWidget {
  final Jogador jogador;

  Card_jogador({super.key, required this.jogador});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => TelaDetalhes(jogador: jogador)));
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(jogador.imagemUrl,
                fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}