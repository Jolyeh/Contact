import 'package:flutter/material.dart';
import '../components/call_option.dart';
import '../models/person.dart';
import '../components/color.dart';

class CallPage extends StatelessWidget {

  Person? contact;

  CallPage({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: vert,
      appBar: AppBar(
        backgroundColor: vert,
        leading: Text(''),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 15,),
          Container(
            height: 120,
            width: 120,
            child: Icon(
              Icons.account_circle,
              size: 120,
              color: blanc,
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(contact!.firstName.toString() + " " + contact!.lastName.toString(),
              style: TextStyle(
                  color: blanc,
                  fontSize: 25,
              ),
            ),
          ),
          SizedBox(height: 4,),
          Center(
            child: Text(contact!.number.toString()+ ' Bénin',
              style: TextStyle(
                color: blanc
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text('Appel...',
              style: TextStyle(
                  color: blanc
              ),
            ),
          ),
          SizedBox(height: 60,),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CallOption(texte: "Enregistrer", icone: Icons.speaker_phone_outlined, iconColor: Colors.black54, iconbg: vert,),
                CallOption(texte: "Coupert le son", icone: Icons.mic_off_outlined, iconColor: Colors.white, iconbg: vert,),
                CallOption(texte: "Ajouter", icone: Icons.add, iconColor: Colors.black54, iconbg: vert,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CallOption(texte: "Appel vidéo", icone: Icons.video_camera_back_outlined, iconColor: Colors.black54, iconbg: vert,),
                CallOption(texte: "En attente", icone: Icons.pause, iconColor: Colors.black54, iconbg: vert,),
                CallOption(texte: "Contact", icone: Icons.contacts_outlined, iconColor: Colors.black54, iconbg: vert,),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CallOption(texte: "", icone: Icons.control_point_duplicate, iconColor: Colors.white, iconbg: vert,),
                CallStop(texte: "", icone: Icons.phone, iconColor: Colors.white, iconbg: Colors.red,),
                CallOption(texte: "", icone: Icons.volume_up, iconColor: Colors.white, iconbg: vert,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
