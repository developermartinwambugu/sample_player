import 'package:flutter/material.dart';
import 'package:simple_player/UI/player.dart';

class Video extends StatelessWidget {
  Widget Context;
  String image;
  String name;
  String description;
  
  Video({required this.Context,required this.image,required this.name,required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: Card(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 150,
          child: Image.asset('assets/'+image),
          ),
          Container(
            child: Column(
              children: [
                Text(name),
                SizedBox(height: 5,),
                Text(description),
                SizedBox(height: 5,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Context,));
                }, child: Text("PLAY"))
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}