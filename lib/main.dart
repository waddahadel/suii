import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {



  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pic_num = 1;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
    {
      if(pic_num == 1){
        setState(() {
          final player = AudioCache();
          player.play('sui/real_sui.mp3');
          pic_num =2;
        });

      }
      else{
        setState(() {
          pic_num = 1;
        });
      }
      }

        ,child : Container(
        color: Colors.black,
        child: Center(
          child: Column(
              children: [
                Image.asset('assets/images/suipic$pic_num.png',width: 300,height: 90,),
                Image.asset(
                'assets/images/ronaldo$pic_num.png', width: 900, height: 500,
              ),
                ]
          ),
        ),
      ),
    );
  }
}


