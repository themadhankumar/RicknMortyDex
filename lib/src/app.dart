import'package:flutter/material.dart';
import'package:http/http.dart' show get;
import'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget{

  createState() {
  return AppState();
  }
}



class AppState extends State< App>{
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async{
    var response;

    if(counter==0)
      {
        response = await get('https://api.myjson.com/bins/wd8ns');
        counter++;
      }
    else {
      response = await get(
          'https://rickandmortyapi.com/api/character/$counter');
      counter++;
    }
    var imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });



  }

  Widget build(context) {
    return MaterialApp(
      title: 'Custom Fonts',
      // Set Raleway as the default app font.
      theme: ThemeData(
          fontFamily: 'Montserrat',
      ),
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add, color: Colors.lightGreenAccent),
          foregroundColor: Colors.purple,
          backgroundColor: Colors.white,
          onPressed: fetchImage,

        ),

        appBar: AppBar(
          backgroundColor: Colors.green,
            title: Text(
                'Pickle Rick 🥒',
                style: TextStyle(fontFamily: 'Schwifty')),
        ),
      ),
    );
  }
}