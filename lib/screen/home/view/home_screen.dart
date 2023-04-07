import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplayer/screen/home/provider/home_provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homeprovider? hptrue;
  Homeprovider? hpfalse;
  @override
  Widget build(BuildContext context) {
    hptrue=Provider.of<Homeprovider>(context,listen: true);
    hpfalse=Provider.of<Homeprovider>(context,listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Video Player"),
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: InkWell(
                onTap: () {
                  Provider.of<Homeprovider>(context,listen: false).inivideo(index);
                  Navigator.pushNamed(context, 'video',arguments: index);
                },
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                  child: Image.asset("${hpfalse!.images[index]}",fit: BoxFit.cover,),
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("${hpfalse!.images[index]}"),
              ),
              title: Text("${hpfalse!.name[index]}",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.more_vert,color: Colors.white,),

            ),
          ],
        );
      },itemCount: hptrue!.images.length,),
    ),
    );
  }
}
