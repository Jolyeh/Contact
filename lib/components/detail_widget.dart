import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';

class DetailWidget extends StatelessWidget {
  String? label , detail;
  DetailWidget({super.key, required this.label, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label",
            style: TextStyle(
              color: vert,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Text("$detail",
            style: TextStyle(
                fontSize: 17,
            ),
          ),
          Container(
            height: 1,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
