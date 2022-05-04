import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image.asset("assets/logo.png"),
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFFF2F3F6),
        child: ListView(
          children: <Widget>[
            const MenuCard(
              titulo: "Brócolis",
              imagem: "assets/brocolis.png",
              datas: "01/04/22 - 09/04/22",
            ),
          ],
        ),
      ),
    );
  }
}

//Modificar para mostrar informações
class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
      required this.titulo,
      required this.imagem,
      required this.datas})
      : super(key: key);

  final String titulo;
  final String imagem;
  final String datas;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: Text(titulo),
            subtitle: Text(datas),
            leading: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagem),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
