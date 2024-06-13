import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';
import '../screens/detail_page.dart';
import '../models/person.dart';
import '../screens/call_page.dart';

class ContactWidget extends StatelessWidget {
  String? number;
  String? name;
  Person? contact;

  ContactWidget({super.key, required this.name, required this.number, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,),
      child: ListTile(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SimpleDialog(
                title: Text('Appeler avec',
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                children: <Widget>[
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage(contact: contact),));

                    },
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 15,
                          height: 22,
                          decoration: BoxDecoration(
                            color: vert,
                            borderRadius: BorderRadius.only(topLeft: Radius.elliptical(5, 8))
                          ),
                          child: Text('1'),
                        ),
                        SizedBox(width: 15,),
                        Text("Moov Africa",
                          style: TextStyle(
                            fontSize: 18
                          ),
                        )
                      ],
                    ),
                  ),
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CallPage(contact: contact),));

                    },
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 15,
                          height: 22,
                          decoration: BoxDecoration(
                              color: vert,
                              borderRadius: BorderRadius.only(topLeft: Radius.elliptical(5, 8))
                          ),
                          child: Text('2'),
                        ),
                        SizedBox(width: 15,),
                        Text("MTN Bénin",
                          style: TextStyle(
                              fontSize: 18
                          ),
                        )
                      ],
                    ),
                  ),
                  SimpleDialogOption(
                    child: Container(
                      height: 1,
                      color: Colors.black12,
                    ),
                  ),
                  SimpleDialogOption(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text('Annuler',
                        style: TextStyle(
                            fontSize: 17,
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
        onLongPress: () async {
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(contact: contact),));
        },
        leading: Container(
          height: 50,
          width: 50,
          child: Icon(
            Icons.account_circle,
            size: 50,
            color: vert,
          ),
        ),
        title: Text('$name'),
        subtitle: Text('$number'),
        splashColor: vert,
      ),
    );
  }
}
