import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imageexplorerg7/deportes_favoritos_page.dart';
import 'package:imageexplorerg7/models/hero_model.dart';

void main() {
  runApp(MaterialApp(
    home: DeportesPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List<HeroModel> lstSuperHeros = [
    HeroModel(
        name: "IronMan",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/04/12/11/11/ai-generated-7920006_640.jpg"),
    HeroModel(
        name: "Hulk",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/06/29/02/54/hulk-8095537_1280.png"),
    HeroModel(
        name: "Mujer Maravilla",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/06/03/07/01/wonder-woman-8037130_1280.png"),
    HeroModel(
        name: "Batman",
        urlImage:
            "https://cdn.pixabay.com/photo/2023/03/14/22/20/relationship-7853278_640.jpg"),
    HeroModel(
        name: "Superman",
        urlImage:
            "https://cdn.pixabay.com/photo/2020/09/11/00/06/spiderman-5561671_1280.jpg"),
  ];
  // int n = Random().nextInt(lstSuperHeros.length - 1);
  int n = 0;
  @override
  void initState() {
    n = Random().nextInt(lstSuperHeros.length);
    super.initState();
  }

  String heroName = "-";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Play with me",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(children: [
          Container(
            height: 300,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(lstSuperHeros[n].urlImage),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                )),
          ),
          Divider(),
          Text(
            "El Nombre es: $heroName",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  heroName = lstSuperHeros[n].name;
                  setState(() {});
                },
                child: Text("Mostrar Nombre"),
              ),
              ElevatedButton(
                onPressed: () {
                  n = Random().nextInt(lstSuperHeros.length);
                  heroName = "-";
                  setState(() {});
                },
                child: Text("Next"),
              )
            ],
          )
        ]),
      ),
    );
  }
}
