
    
    
    import 'package:flutter/material.dart';
import '../controle/jogador_controle.dart';
import './Card_jogador.dart';

//Classe tela inicial herda stateless - não mudanças na tela
class TelaInicial extends StatelessWidget {
  //construtor da classe - identificação
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    final jogadorController = JogadorController();
    final listaJogadores = jogadorController.listarJogadores();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Álbum da Seleção",
          style: TextStyle(fontWeight: (FontWeight.bold)),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF071B14), Color(0xFF0b4d2E), Color(0xFF0A6B3C)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),

        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.12),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.emoji_events, size: 58, color: Colors.amber),
                      SizedBox(height: 12),
                      Text(
                        'Brasil rumo ao Hexa',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Toque em uma figurinha para ver os detalhes',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: listaJogadores.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    childAspectRatio: 0.70,
                  ),
                  itemBuilder: (context, index) {
                    final jogador = listaJogadores[index];
                    return Card_jogador(jogador: jogador);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



