import 'package:flutter/material.dart';
import 'package:simple_player/UI/gettextfield.dart';
import 'package:simple_player/UI/login.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);
  

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  TextEditingController usertec=TextEditingController();
  TextEditingController passtec=TextEditingController();
  TextEditingController passtecc=TextEditingController();
  TextEditingController emailtec=TextEditingController();
  final _formkey=GlobalKey<FormState>();


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
                Center(child: Text("REGISTRATION",style: TextStyle(fontSize: 17),)),
                SizedBox(height: 20,),
               
                Form(key: _formkey,
                  child: Column(
                    children: [
                      GetTextField(Controller: usertec, hintname: "Enter Your Username", icon: Icons.person, isObsecureText: false),
                      SizedBox(height: 20,),
                      GetTextField(Controller: emailtec, hintname: "Enter Your Email", icon: Icons.email, isObsecureText: false),
                      SizedBox(height: 20,),
                      GetTextField(Controller: passtec, hintname: "Enter Your Password", icon: Icons.lock, isObsecureText: true),
                      SizedBox(height: 30,),
                      //GetTextField(Controller: passtecc, hintname: "Confirm Your Password", icon: Icons.lock, isObsecureText: true),
                      //SizedBox(height: 30,),
                      ElevatedButton(onPressed: (){
                        if(_formkey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Registration Successful")));
                        }
                      }, child: Text("REGISTER")),
                      SizedBox(height: 30),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
                      }, child: Text("Have an account? click here"))
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