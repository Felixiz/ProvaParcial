import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image.asset("assets/logo.png"),
          ),
        ),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false)),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ListTile(
                  title: Text("Tema: Gerenciador de Plantação Indoor"),
                )
              ],
            ),
            const MenuCard(
                nome: "Gabriel Félix Sampaio Lima",
                imagem:
                    "https://scontent.frao2-1.fna.fbcdn.net/v/t31.18172-8/13558927_1035792399848262_1332388859734821441_o.jpg?_nc_cat=106&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeEThg8jz9zFVKMTD1h_lQsX9fuHAYBBwzv1-4cBgEHDO6mdvr-eAgHSbS63ciFn0gUn17KN-b5ItTtZoZVvsj0C&_nc_ohc=SjDY1XE9Tq4AX-SibW4&_nc_ht=scontent.frao2-1.fna&oh=00_AT_o3NiM0lpqdw3sMa8vrFYv_F_ArkxyVDhHHPoyCHrTGg&oe=6283466E",
                codigo: "823955"),
            const MenuCard(
                nome: "Gustavo Lopes",
                imagem:
                    "https://media-exp1.licdn.com/dms/image/C4D03AQHFt8r3cEwwvA/profile-displayphoto-shrink_200_200/0/1592910540123?e=1655942400&v=beta&t=XeaBzaf_yLRbI2INkFsDQ3dBoKR6Q943ycEY7odP_JI",
                codigo: "?????"),
          ],
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key,
      required this.nome,
      required this.imagem,
      required this.codigo})
      : super(key: key);

  final String nome;
  final String imagem;
  final String codigo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imagem),
            ),
            title: Text(nome),
            subtitle: Text("Codigo: " + codigo),
          )
        ],
      ),
    );
  }
}
