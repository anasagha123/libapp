import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 111, 97, 238),
      body: Center(
        child: Column(
          children:[ 
            SizedBox(height: 200,),
            LoadingAnimationWidget.dotsTriangle(
          color: Color.fromARGB(255, 246, 248, 248),
          size: 150, 
          ),
          SizedBox(height: 30,),
          Text("Loading...",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)
      ]  ),
      )
 ); }
}