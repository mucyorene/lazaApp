import 'package:flutter/material.dart';

class splash extends StatelessWidget {
  const splash({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0Xff9775FA),
        
        child: Center(child: Image(image: AssetImage('assets/images/Logo.png'),width: 70,height: 70,),),
      ),
      
    );
  }
}