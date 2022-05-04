import 'package:flutter/material.dart';
import 'package:projeto/view/cadastroPlantaPage.dart';
import 'package:projeto/view/loginPage.dart';
import 'package:projeto/view/sobrePage.dart';
import 'package:projeto/view/InfoPage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

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
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_back),
              onTap: () => Navigator.pop(context, false),
            ),
            ListTile(
              leading: const Icon(Icons.question_mark),
              title: const Text("Sobre"),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SobrePage())),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const LoginPage())),
            ),
          ],
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
            const MenuCard(
              titulo: "Cereja",
              imagem: "assets/cereja.png",
              datas: "10/03/22 - 09/04/22",
            ),
            const MenuCard(
              titulo: "Morango",
              imagem: "assets/morango.png",
              datas: "18/02/22 - 09/04/22",
            ),
            const MenuCard(
              titulo: "Tomate",
              imagem: "assets/tomate.png",
              datas: "24/07/20 - 09/04/22",
            ),
            const MenuCard(
              titulo: "Uva",
              imagem: "assets/uvas.png",
              datas: "19/12/21 - 09/04/22",
            ),
            Container(
              width: 56,
              height: 56,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1.0],
                  colors: [Color(0xFFF58524), Color(0XFFF92B7F)],
                ),
                border: Border.all(
                  width: 4.0,
                  color: const Color(0xFFFFFFFF),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(56),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CadastroPlantaPage(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            //trailing: IconButton(
            //icon: const Icon(Icons.arrow_back_ios_new),
            //onPressed: () {
            //Navigator.push(
            //context,
            //MaterialPageRoute(
            //builder: (context) => const InfoPage(),
            //),
            //);
            //}),
            title: Text(titulo),
            subtitle: Text(datas),
            leading: Container(
              height: 40,
              width: 40,
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
