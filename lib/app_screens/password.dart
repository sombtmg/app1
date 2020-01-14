import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}
class _PasswordState extends State<Password> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          margin: EdgeInsets.only(left: 60,top: 20, right: 60),
          child: TextField(
            obscureText: true,
            onSubmitted: (String string){
              setState(() {
              name = string;
              });
            },
            decoration: InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.teal)
              ),
              hintText: 'Enter password',
              helperText: 'Enter a strong password',
              labelText: 'Secret',
              prefixIcon: const Icon(Icons.lock, color: Colors.green,),
              prefixText: ' ',
            ),
          ),
        ));
  }
}

