import 'package:flutter/material.dart';
import 'package:stateless/pagina.dart';
import 'package:stateless/perfil.dart';

//função principal que indica o aplicativo
void main(){
  runApp(principal());
}

//Classe de configuração
class principal extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Aplicativo(),
    );
  }
}

//classe que representa a parte visual
class Aplicativo extends StatelessWidget{
  const Aplicativo({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter é top!"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    body: Center(
      //organizar em colunas
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Container - é uma caixa
          Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.only(top: 75),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 52, 52, 91),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),

          Text("olá mundo", style: TextStyle(fontSize: 30)),
          
         //Widget de linha
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, color: Colors.blue, size: 50),
             Icon(Icons.person, color: Colors.blue, size: 50),
          ],
         ),
         

       


        ],
      ),
    ),

       bottomNavigationBar: BottomNavigationBar(
            items:[
              BottomNavigationBarItem(icon: Icon(Icons.school), label: "Escola" ),
              BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), label: "Fotos" ),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar" ),
            ]

          ),

          drawer: Drawer(
            backgroundColor: Colors.deepPurpleAccent,
            child: ListView(
              //zerar padding
              padding: EdgeInsets.zero,
              children: [
                 DrawerHeader(
                 child: Text("App Atom", style: TextStyle(color: Colors.white, fontSize: 25),
                 ),

              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Perfil"),
                onTap: () {print("Entrou no perfil");
                 Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil() ));
                 },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Pagina Inicial"),
                onTap: (){
                  Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pagina() ));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Configurações"),
                onTap: () {print("Entrou na pagina de configurações"); },
              ),
              ],
             
            ),
          ),
    );
  }
 
}