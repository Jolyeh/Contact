import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';
import '../components/search_bars.dart';
import '../components/contact_widget.dart';
import '../models/list.dart';
import 'add_contact_page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: vert,
        leading: IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.menu),
          color: blanc,
          tooltip: "Menu",
        ),
        title: Center(
          child: Text("Contacts",
            style: TextStyle(
              color: blanc
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
              });
            },
            icon: Icon(Icons.refresh),
            color: blanc,
            tooltip: 'Actualiser la page',
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          SearchBars(),
          SizedBox(height: 20,),
          Text("Tous les contacts",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
          ...contactList.map((e) => ContactWidget(name: "${e.firstName !} ${e.lastName}", number: e.number, contact: e,)).toList(),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var contact = await Navigator.push(context, MaterialPageRoute(builder: (context) => AddContactPage(),));
          if (contact == null){
            setState(() {
            });
          }else{
            contactList.add(contact);
            setState(() {
            });
          }

        },
        backgroundColor: vert,
        child: Icon(Icons.add, color: blanc,),
        tooltip: "Ajouter un nouveau contact",
      ),
    );
  }
}
