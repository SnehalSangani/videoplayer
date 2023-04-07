import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Homeprovider extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
   List images=[
     "assets/images/dil.jpg",
     "assets/images/duniya.jpg",
     "assets/images/ghunghroo.jpg",
     "assets/images/mummy.jpg",
     "assets/images/nagin.jpg",
   ];
   List name=[
     "Dil Main Ho Tum ||" ,
     "Duniya - Luka Chhupi ||",
     "Ghunghroo Toot Gaye ||",
     "Mummy Nu Pasand ||",
     "Nagin - Aastha Gill ||",
   ];
   List video=[
     "assets/video/dil.mp4",
     "assets/video/lukachhupi.mp4",
     "assets/video/ghunghroo.mp4",
     "assets/video/mummy.mp4",
     "assets/video/nagin.mp4",
   ];
   void inivideo(int index)
   {
     videoPlayerController=VideoPlayerController.asset("${video[index]}");
     videoPlayerController!.initialize();
     chewieController =ChewieController(videoPlayerController: videoPlayerController!,
     autoPlay: true,
       allowFullScreen: true,
       looping: false,
     );
   }
}