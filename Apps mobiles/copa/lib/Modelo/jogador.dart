//Classse é uma representação de como é um jogador, um molde
class Jogador{
  String nome;
  String posicao;
  int numero;
  String descricao;
  String imagemUrl;
  String nacionalidade;
  String time;

//Construtor - Controi o jogador e alimenta as variáveis
Jogador({
  required this.nome,
  required this.posicao,
  required this.numero,
  required this.descricao,
  required this.imagemUrl,
  required this.nacionalidade,
  required this.time,
});

}