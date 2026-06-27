import 'package:copa/Vis%C3%A3o/Card_info.dart';
import 'package:flutter/material.dart';
import '../modelo/Jogador.dart';

class TelaDetalhes extends StatelessWidget{
  final Jogador jogador;

  const TelaDetalhes({super.key, required this.jogador});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF071b14),
      appBar: AppBar(
        title: Text(jogador.nome),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                jogador.imagemUrl,
                width: double.infinity,
                height: 500,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10,),
            Text(jogador.nome, style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            )
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Chip(label: Text('#${jogador.numero}'),
                backgroundColor: Color(0xFFFFD600),
                labelStyle: TextStyle(
                  color: Color(0xFF064420),
                  fontWeight: FontWeight.bold,
                ),
                ),
                
              ],
            ),
            SizedBox(height: 20,),
                Card_info(
                  icone: Icons.description,
                  titulo: 'Descrição,',
                  texto: jogador.descricao,
                ),

                SizedBox(height: 20),
                Card_info(
                  icone: Icons.sports_soccer,
                  titulo: 'Sobre a figurinha',
                  texto:'Esta figurinha faz parte da seleção Brasileira',
                ),
                  SizedBox(height: 20),
                Card_info(
                  icone: Icons.location_on,
                  titulo: 'posição',
                  texto:jogador.posicao,
                ),
                  SizedBox(height: 20),
                Card_info(
                  icone: Icons.sports_football,
                  titulo: 'Time',
                  texto:jogador.time,
                ),
          ],
        ),
      ),
    );
  }
}