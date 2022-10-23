import 'package:flutter/material.dart';

class SuperHeroPage extends StatefulWidget {
  SuperHeroPage({Key? key}) : super(key: key);

  @override
  State<SuperHeroPage> createState() => _SuperHeroPageState();
}

class _SuperHeroPageState extends State<SuperHeroPage> {
  Future<List<Map<String, dynamic>>> getSuperHeroes() async {
    return Future.delayed(
      Duration(seconds: 7),
      () {
        return [
          {
            "name": "Molecule Man",
            "age": 29,
            "secretIdentity": "Dan Jukes",
            "powers": [
              "Radiation resistance",
              "Turning tiny",
              "Radiation blast"
            ]
          },
          {
            "name": "Madame Uppercut",
            "age": 39,
            "secretIdentity": "Jane Wilson",
            "powers": [
              "Million tonne punch",
              "Damage resistance",
              "Superhuman reflexes"
            ]
          }
        ];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Super Hero List"),
        ),
        body: FutureBuilder(
          future: getSuperHeroes(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              List _superHeroes = snapshot.data;
              return ListView.builder(
                itemCount: _superHeroes.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.24),
                      ),
                    ),
                    child: ListTile(
                      title: Text(_superHeroes[index]["name"]),
                      subtitle: Text(
                          _superHeroes[index]["secretIdentity"].toString()),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ));
  }
}
