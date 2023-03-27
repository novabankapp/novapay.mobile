import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

Future<void> showAlertDialog(
    BuildContext context,
    String title,
    List<Widget> widgets,
    List<Widget> actions) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title, textAlign: TextAlign.center,),
        content: SingleChildScrollView(
          child: ListBody(
            children: widgets,
          ),
        ),
        actions: actions,
      );
    },
  );
}