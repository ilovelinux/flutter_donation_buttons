import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PatreonButton extends StatelessWidget {
  ///Text the button shows, default: "Support me on Patreon"
  final String text;
  ///Your patreon name e.g. buttonshy
  ///How to get it? 
  ///visit your patreon page: https://patreon.com/buttonshy <- part after the / is your name
  final String patreonName;
  const PatreonButton({Key? key,this.text="Support me on Patreon",required this.patreonName}) : super(key: key);
  ///Patreon base url
  final String baseUrl = "https://patreon.com/";
  @override
  Widget build(BuildContext context) {
    assert(patreonName.isNotEmpty);
    return ElevatedButton.icon(onPressed: (){
      try{
        launch(baseUrl+this.patreonName);
      }catch(e){
        print("Error: $e");
      }
    }, icon: FaIcon(FontAwesomeIcons.patreon,color: Colors.black,), label: Text(text),style: ElevatedButton.styleFrom(primary:Colors.deepOrange),);
  }
}