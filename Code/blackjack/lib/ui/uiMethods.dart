import 'package:flutter/material.dart';

class UIMethods {
  final void Function() updateUi;
  UIMethods({this.updateUi});

  Future<void> showErrorMessage(BuildContext context, dynamic ex) async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Error"),
            content: Text(ex.toString()),
            actions: <Widget>[
              RaisedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Ok"),
              ),
            ],
          );
        });
  }
}
