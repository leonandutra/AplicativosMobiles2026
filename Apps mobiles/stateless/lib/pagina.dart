import 'package:flutter/material.dart';

void main() {
  runApp(Pagina());
}

class Pagina extends StatelessWidget {
  const Pagina({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue, title: Text("Página"),),
        body:Center(
         child: Column(
          children: [
            Image.network('https://images.ctfassets.net/3mv54pzvptwz/55YLwKPDnRXkqMBITRpWbC/0c2aefc04afa455c20e9ca0d209698e0/53174188191_42d4c831ae_o.jpg', width: 300, height: 300,),
            SizedBox(height: 20,),
            Text("Oque é Flutter?", style: TextStyle(fontSize: 20)),

            Text('''Flutter é um framework do google para criar aplicativos multiplataformas.\n
            Serve para Android, Ios, Web, Desktop, entre outros, usando linguagem DART. \n
            Possui Widgets, que são blocos de construção da interface no flutter, toda tela é um widget.
            Desde Botões e textos até layouts mais complexos. Eles podem ser:
            ''', textAlign: TextAlign.center,),

            //criando lista
            ListTile(leading: Icon(Icons.arrow_circle_right_outlined),
            title: Text("Statefull: com estado dinâmico, a tela muda,, ex: placar, pontos")
            ),
                  ListTile(leading: Icon(Icons.arrow_circle_right_outlined),
            title: Text("Stateless: Imutável, a tela sempre é a mesma")),
          
          ElevatedButton(onPressed: (){}, child: Text("Clique aqui")),

          ],
         ),
        )
      ),
    );
  }
}
