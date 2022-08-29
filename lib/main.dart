import 'package:flutter/material.dart';
import 'package:simple_player/UI/login.dart';

void main()=>runApp(const simple_player());

class simple_player extends StatelessWidget {
  const simple_player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIMPLE PLAYER',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Login(),
    );
  }
}