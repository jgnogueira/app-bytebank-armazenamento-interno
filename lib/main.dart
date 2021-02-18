import 'package:bytebank_armazenamento_interno/database/app_database.dart';
import 'package:bytebank_armazenamento_interno/models/contact.dart';
import 'package:bytebank_armazenamento_interno/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Bytebank());
  save(Contact(0, 'Durant', 1000)).then(
    (id) {
      findAll().then(
        (contacts) {
          debugPrint(
            contacts.toString(),
          );
        },
      );
    },
  );
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Dashboard(),
    );
  }
}
