import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screen/home/provider/home_provider.dart';
import 'package:videoplayer/screen/home/video_screen.dart';
import 'package:videoplayer/screen/home/view/home_screen.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
          'video':(context) => video(),
        },
      ),
    )
  );
}