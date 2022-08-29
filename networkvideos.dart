import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

class NetVideo extends StatefulWidget {

    String url;
    String name;
    String Description;

  NetVideo({Key? key, required this.url,required this.name, required this.Description}): super(key: key);

  @override
  State<NetVideo> createState() => _NetVideoState();
} 

class _NetVideoState extends State<NetVideo> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
            height: 200,
            child: Card(
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    child: FutureBuilder(
                            future: _initializeVideoPlayerFuture,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.done) {
                                // If the VideoPlayerController has finished initialization, use
                                // the data it provides to limit the aspect ratio of the video.
                                return AspectRatio(
                                  aspectRatio: _controller.value.aspectRatio,
                                  // Use the VideoPlayer widget to display the video.
                                  child: VideoPlayer(_controller),
                                );
                              } else {
                                // If the VideoPlayerController is still initializing, show a
                                // loading spinner.
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            },
                      ),
                  ),    
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(height: 10,),
                        Text("Name"),
                        Text("Description"),
                        ElevatedButton(onPressed: (){
                                    setState(() {
                                      if(_controller.value.isPlaying){
                                        _controller.pause();
                                      }else{
                                        _controller.play();
                                      }
                                    });
                                  }, child: Icon(
                          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                        ),)
                        ],
                    ),
                  ),
                ],
              ),
            ) 
          );
  }
}
