import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';
import '../models/person.dart';
import '../screens/call_page.dart';

class AppelOption extends StatelessWidget {

  IconData? icone;
  String? texte;
  Person? contact;
  AppelOption({super.key, required this.texte, required this.icone, required this.contact});


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