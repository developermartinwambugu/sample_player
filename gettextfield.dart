import 'package:flutter/material.dart';

class GetTextField extends StatelessWidget {
  TextEditingController Controller;
  String hintname;
  IconData icon;
  bool isObsecureText;

  GetTextField({required this.Controller,required this.hintname,required this.icon,required this.isObsecureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(obscureText: isObsecureText,
      validator: (value){if(value!.isEmpty)return "Please Enter The Details";else return null;},
      controller: Controller,
      decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.transparent)
      ),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.blue),
      ),
      prefixIcon: Icon(icon),
      hintText: hintname,
      fillColor: Colors.grey[200],
      filled: true,
      ),
      //keyboardType: TextInputType.text,
      ),
    );
  }
}