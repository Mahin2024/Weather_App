import 'package:flutter/material.dart';
class WeatherTileWidget extends StatelessWidget {
  BuildContext? context;
  String? title;
  double? titleFontSize;
  String? subTitle;
  WeatherTileWidget(
  {super.key, this.context, this.title, this.titleFontSize,this.subTitle });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            title?? '',style: TextStyle(fontSize:  titleFontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/100,),
        Center(
          child: Text(
            subTitle?? '',style: const TextStyle(
              fontSize:  14,
              color: Colors.white),
          ),
        ),
      ],
    );
  }
}
