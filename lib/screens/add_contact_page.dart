import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/color.dart';
import '../models/person.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {

  final _formkey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final numberController = TextEditingController();
  final mailController = TextEditingController();
  final adressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: vert,
        title: Center(child: Text('Ajouter un contact',
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

      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nom"
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Veuillez remplir ce champs';
                    }
                    return null;
                  },
                  controller: nameController,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Prenom"
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Veuillez remplir ce champs';
                    }
                    return null;
                  },
                  controller: surnameController,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Numero"
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Veuillez remplir ce champs';
                    }
                    return null;
                  },
                  controller: numberController,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email"
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Veuillez remplir ce champs';
                    }
                    return null;
                  },
                  controller: mailController,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Domicile"
                  ),
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return 'Veuillez remplir ce champs';
                    }
                    return null;
                  },
                  controller: adressController,
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          if(_formkey.currentState!.validate()){
            final name = nameController.text;
            final surname = surnameController.text;
            final number = numberController.text;
            final mail = mailController.text;
            final adress = adressController.text;

            Navigator.pop(context, Person(firstName: name, lastName: surname, number: number, email: mail, domicile: adress));
          }
        },
        child: Text("Enregistrer"),
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(vert),
          foregroundColor: MaterialStatePropertyAll(blanc),
        ),
      ),
    );
  }
}
