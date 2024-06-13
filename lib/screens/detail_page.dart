import 'package:flutter/material.dart';
import '../components/appel_option.dart';
import '../components/remove_option.dart';
import '../models/person.dart';
import '../components/color.dart';
import '../components/option_widget.dart';
import '../components/detail_widget.dart';

class DetailPage extends StatelessWidget {

  Person? contact;

  DetailPage({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: vert,
        title: Center(child: Text('Détail',
          style: TextStyle(
            color: blanc
          ),
        )
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: blanc,),
        ),
      ),

      body: ListView(
        children: [
          Container(
            height: 350,
            color: vert,
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 30,),
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
                Text(contact!.firstName.toString() + " " + contact!.lastName.toString(),
                  style: TextStyle(
                      color: blanc,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OptionWidget(texte: "Message", icone: Icons.message,),
                      AppelOption(texte: "Appel", icone: Icons.phone, contact: contact,),
                      OptionWidget(texte: "Video", icone: Icons.video_call,),
                      RemoveOption(texte: "Supprimer", icone: Icons.delete_outline, contact: contact,),
                    ],
                  ),
                ),
              ],
            ),

          ),
          DetailWidget(label: "Numéro", detail: contact!.number.toString()),
          DetailWidget(label: "Email", detail: contact!.email),
          DetailWidget(label: "Adresse", detail: contact!.domicile)
        ],
      )

    );
  }
}
