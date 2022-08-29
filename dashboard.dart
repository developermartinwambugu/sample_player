import 'package:flutter/material.dart';
import 'package:simple_player/UI/gettextfield.dart';
import 'package:simple_player/UI/login.dart';
import 'package:simple_player/UI/news.dart';
import 'package:simple_player/UI/player.dart';
import 'package:simple_player/UI/videos.dart';


class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  TextEditingController search=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("HOME")),
      drawer: Drawer(elevation: 10,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text("Username"),
          accountEmail: Text("Email"),
          currentAccountPicture: CircleAvatar(child: Image.asset("assets/user.png")),decoration: BoxDecoration(color: Colors.blue),),
          ListTile(title: Text("Dashboard"),
          leading: Icon(Icons.dashboard),
          onTap: (){},
          ),
          Divider(height: 0.2,),
          ListTile(title: Text("News"),
          leading: Icon(Icons.newspaper),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => News(),));
          },
          ),
          Divider(height: 0.2,),
          ListTile(title: Text("Subscriptions"),
          leading: Icon(Icons.subscriptions),
          onTap: (){},
          ),
          Divider(height: 0.2,),
          ListTile(title: Text("Help"),
          leading: Icon(Icons.help),
          onTap: (){},
          ),
          Divider(height: 0.2,),
          ListTile(title: Text("Logout"),
          leading: Icon(Icons.logout),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
          },
          ),
        ],
      ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 10,),
            TextButton(onPressed: (){}, child: Text("VIDEOS",style: TextStyle(fontSize: 23,color: Colors.amber)),),
            SizedBox(width: 10,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => News(),));
            }, child: Text("NEWS",style: TextStyle(fontSize: 23,color: Colors.amber)),
            ),
            Container(width: 150,
              child: TextFormField(decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              )),
            )
          ],),
          Divider(height: 4,),
          SizedBox(height: 20,),
          Video(Context: VideoPlayerScreen(),image: "local.jpg", name: "LOCAL", description: "Your videos"),
          SizedBox(height: 20,),
          Video(Context: VideoPlayerScreen(),image: "alladin.jpg", name: "MOVIES", description: "Stream Latest Movies"),
          SizedBox(height: 20,),
          Video(Context: VideoPlayerScreen(),image: "avatar.jpg", name: "SERIES", description: "Stream Latest Series"),
          SizedBox(height: 20,),
          Video(Context: VideoPlayerScreen(),image: "alladin.jpg", name: "DRAMA", description: "Stream Latest drama"),
          SizedBox(height: 20,),
          Video(Context: VideoPlayerScreen(),image: "youtube.png", name: "YOUTUBE", description: "Stream youtube videos")
        ],
      ),
    );
  }
}