import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class ForeCastTileWidget extends StatelessWidget {

String? temp;
String? time;
var imageUrl;

    ForeCastTileWidget({super.key,required this.temp,required this.time,required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Card(

      color: Colors.blueGrey,
      shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(20.0) ),
      child:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(temp?? '', style: const TextStyle(color: Colors.white),),
              CachedNetworkImage(
                imageUrl: imageUrl??'' ,
                height: 50,
                width: 50,
                fit: BoxFit.fill,
                progressIndicatorBuilder: (context,url,downloadProgress)=>const CircularProgressIndicator(),
                errorWidget: (context,url,err)=>const Icon(Icons.image,color: Colors.white,),
              ),
              Text(time?? '', style: const TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
