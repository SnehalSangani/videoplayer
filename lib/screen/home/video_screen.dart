import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screen/home/provider/home_provider.dart';

class video extends StatefulWidget {
  const video({Key? key}) : super(key: key);

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  Homeprovider? hptrue;
  Homeprovider? hpfalse;
  @override
  Widget build(BuildContext context) {
    int inde=ModalRoute.of(context)!.settings.arguments as int;
    hptrue=Provider.of<Homeprovider>(context,listen: true);
    hpfalse=Provider.of<Homeprovider>(context,listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Video"),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 600,
            width: double.infinity,
            child: Chewie(
              controller: hpfalse!.chewieController!,
            ),
          )
        ],
      ),

    ),);
  }
}
