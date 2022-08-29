import 'package:flutter/material.dart';
import 'package:simple_player/UI/dashboard.dart';
import 'package:simple_player/UI/gettextfield.dart';
import 'package:simple_player/UI/register.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formkey = GlobalKey<FormState>();

  TextEditingController usertec=TextEditingController();
  TextEditingController passtec=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20),
                Center(child: Text("WELCOME BACK",style: TextStyle(fontSize: 18),)),
                SizedBox(height: 30,),
                Form(key: _formkey,
                  child: Column(
                    children: [
                      GetTextField(Controller: usertec, hintname: "Enter Your Username", icon: Icons.person, isObsecureText: false),
                      SizedBox(height: 20,),
                      GetTextField(Controller: passtec, hintname: "Enter Your Password", icon: Icons.lock, isObsecureText: true),
                      SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){
                        if(_formkey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Sign in Succesful")));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard(),));
                        }
                      }, child: Text("LOGIN")),
                      SizedBox(height: 30),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                      }, child: Text("Are you new? click here"))
                    ],
                  )),
      
              ],
            ),
          ),
        ),
      ),
    );
  }
}