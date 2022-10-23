import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "-";
  List<String> data = [];
  @override
  initState() {
    super.initState();
    fetchDataFinal();
    // getName().then((value) {
    //   name = value;
    //   setState(() {});
    // });
  }

  Future fetchDataFinal() async {
    data = await getData();
    setState(() {});
  }

  Future<String> getName() async {
    return Future.delayed(
      Duration(seconds: 3),
      () {
        return "Juan Carlos";
      },
    );
  }

  Future<List<String>> getData() async {
    return Future.delayed(Duration(seconds: 5), () {
      return ["Juan", "Cristian", "Jaime", "Rolando", "Luis"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Future"),
          actions: [
            FutureBuilder(
              future: getName(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if(snapshot.hasData){
                  String _name = snapshot.data;
                  return Text(_name);
                }
                return CircularProgressIndicator();
              },
            )
          ],
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            // print(snapshot.hasData);
            // print(snapshot.connectionState);
            // print(snapshot.data);
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]),
                  );
                },
              );
            }

            return CircularProgressIndicator();
          },
        ));
  }
}
