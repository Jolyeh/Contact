import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';
import '../models/list.dart';
import '../models/person.dart';


class RemoveOption extends StatelessWidget {

  IconData? icone;
  String? texte;
  Person? contact;
  RemoveOption({super.key, required this.texte, required this.icone, required this.contact});

  void remove(){
    contactList.remove(contact);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 40,
              width: 40,
              child: CircleAvatar(
                child: IconButton(
                  onPressed: () {
                    remove();
                    Navigator.pop(context);
                  },
                  icon: Icon(icone, color: vert,),
                ),
              )
          ),
          Text("$texte",
            style: TextStyle(
                fontSize: 15,
                color: blanc
            ),
          ),
        ],
      ),
    );
  }
}