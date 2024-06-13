import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';

class OptionWidget extends StatelessWidget {

  IconData? icone;
  String? texte;
  OptionWidget({super.key, required this.texte, required this.icone,});

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
                  onPressed: () {},
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
