import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("NEWS"),),
      body: Center(  
        child: ElevatedButton(  
          child: Text('Click Here'),  
          onPressed: (){},  
        ),  
      ),  
    ); 
  }
}