import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;


  ImageList(this.images);

  Widget build(context){
    return ListView.builder(
      itemCount: images.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, int index){
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.green,
          width: 3.0
        ),
        borderRadius: BorderRadius.all(
            Radius.circular(5.0) //
        ),
      ),

      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(image.url),
            padding: EdgeInsets.only(bottom: 10.0)
          ),


          Text(
              image.title,
              style: TextStyle(
                color: Colors.green,
                fontSize: 18.0,
            )
          ),
          Text(
              image.status,
              style: TextStyle(
                color: Colors.green,
                fontSize: 18.0,
              )
          ),
          Text(
              image.species,
              style: TextStyle(
                color: Colors.green,
                fontSize: 18.0,
              )
          ),
          Text(
              image.gender,
              style: TextStyle(
                color: Colors.green,
                fontSize: 18.0,
              ),
          ),
        ],
      ),
    );
  }
}
