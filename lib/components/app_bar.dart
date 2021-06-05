import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    
    return new Container(
      padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      height: barHeight + 20,
      child: new Container(

        child: Container(
              width: double.infinity,
              height: 200,
              decoration: new BoxDecoration(
              gradient: new LinearGradient(
              colors: [const Color(0xFFf648b1), const Color(0xFFfffFF)],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: [0.0, 0.5],
              tileMode: TileMode.clamp), 

                image: new DecorationImage(
                image: new AssetImage("appbar.png"),
            ),
        ),

        child: Padding(
          padding: const EdgeInsets.only(right: 360), 
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey.shade900,
            ),
          ),
        ),
        ),
        
      ),
    );
  }
}
