import 'package:flutter/material.dart';

class Card_info extends StatelessWidget{
  final IconData icone;
  final String titulo;
  final String texto;

  const Card_info({
    super.key,
    required this.icone,
    required this.titulo,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.10),
        borderRadius: BorderRadius.circular(22)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icone, color: Color(0xFFFFd600), size: 28,),
          SizedBox(width: 14,),
          Expanded(child: Column(
            children: [
              Text(titulo, style: TextStyle(color: Colors.white, fontSize: 19),),
              SizedBox(height: 8,),
              Text(texto, style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.4),),
            ],
          ),)
        ],
      ),
    );
  }
}