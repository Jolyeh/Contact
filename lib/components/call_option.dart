import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';

class CallOption extends StatelessWidget {

  IconData? icone;
  String? texte;
  Color? iconColor, iconbg;
  CallOption({super.key, required this.texte, required this.icone, required this.iconColor, required this.iconbg});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundColor: iconbg,
                child: IconButton(
                  onPressed: () {
                  },
                  icon: Icon(icone, color: iconColor,),
                ),
              )
          ),
          Text("$texte",
            style: TextStyle(
                fontSize: 12,
                color: iconColor
            ),
          ),
        ],
      ),
    );
  }
}


class CallStop extends StatelessWidget {

  IconData? icone;
  String? texte;
  Color? iconColor, iconbg;
  CallStop({super.key, required this.texte, required this.icone, required this.iconColor, required this.iconbg});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              height: 40,
              width: 40,
              child: CircleAvatar(
                backgroundColor: iconbg,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(icone, color: iconColor,),
                ),
              )
          ),
          Text("$texte",
            style: TextStyle(
                fontSize: 12,
                color: iconColor
            ),
          ),
        ],
      ),
    );
  }
}