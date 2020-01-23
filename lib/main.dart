import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    super.initState();
  }

  static AudioCache player = AudioCache();
  Widget custumButton(buttonColor,text) {
    return MaterialButton(
      textColor: Colors.white,
      color: buttonColor,
      height: 90.0,
      minWidth: 160.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Text(" "),
      onPressed: () {
        playsound(text);
              },
            );
          }
          
          @override
          Widget build(BuildContext context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData.dark(), 
              home: Scaffold(
                body: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:4.0,bottom: 4.0,left:10.0,right: 10.0),
                        child: Row(
                          children: <Widget>[
                            custumButton(Color(0xFFff1100),"ONE"),
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFFfc0fb1),"TWO"),
                             Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFF242eed),"THREE"),
                             Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFFfff824),"FOUR"),
                          ],
                        ),
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top:4.0,bottom: 4.0,left:10.0,right: 10.0),
                         child: Row(
                          children: <Widget>[
                            custumButton(Color(0xFF30fc33),"FIVE"),
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFF6E01A3),"SIX"),
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Colors.white,"SEVEN"), 
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFFf51862),"EIGHT"),
                          ],
                      ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top:4.0,bottom:4.0,left:10.0,right: 10.0),
                         child: Row(
                          children: <Widget>[
                            custumButton(Color(0xFF00ffff),"NINE"),
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFFff9900),"TEN"),
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFF0CFF00),"ELEVEN"), 
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFF7F03FF),"TWELVE"),
                          ],
                        ),
                       ),

                      Padding(
                        padding: const EdgeInsets.only(top: 4.0,bottom: 4.0,left:10.0,right: 10.0),
                        child: Row(
                          children: <Widget>[
                            custumButton(Color(0xFFf2057c),"NINE"),
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFF0597ff),"TEN"),
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFFFF3B03),"ELEVEN"), 
                            Padding(padding: EdgeInsets.all(10.0),),
                            custumButton(Color(0xFFFF032B),"TWELVE"),
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ), 
            );
          }
        
    void playsound(text) {
    switch (text) {
      case "ONE":
        player.play("track1.mp3");
        break;
      case "TWO":
        player.play("track2.mp3");
        break;
      case "THREE":
        player.play("track3.mp3");
        break;
      case "FOUR":
        player.play("track4.mp3");
        break;
      case "FIVE":
        player.play("track5.mp3");
        break;
      case "SIX":
        player.play("track6.mp3");
        break;
      case "SEVEN":
        player.play("track7.mp3");
        break;
      case "EIGHT":
        player.play("track8.mp3");
        break;
      case "NINE":
        player.play("track4.mp3");
        break;
      case "TEN":
        player.play("track3.mp3");
        break;
      case "ELEVEN":
        player.play("track2.mp3");
        break;
      case "TWELVE":
        player.play("track1.mp3");
        break;
    }
  }
}