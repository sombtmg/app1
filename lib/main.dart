import 'package:flutter/material.dart';

import 'app_screens/password.dart';
import 'app_screens/text_field1.dart';
import 'app_screens/button.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String name;

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    _controller.addListener(() {
      name = _controller.text;
    });
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Simple Form",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Sample Form"),
            backgroundColor: Colors.lightGreen,
          ),
          body: Material(
            child: ListView(
              children: <Widget>[
                Center(
                  child: Icon(
                    Icons.satellite,
                    color: Colors.blueAccent,
                    size: 300,
                  ),
                ),
                Center(
                    child: Container(
                  margin: EdgeInsets.only(left: 60, top: 20, right: 60),
                  child: TextField(
                    controller: _controller,
                    maxLength: 10,
                    decoration: InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.teal)),
                      hintText: 'Enter username',
                      helperText: 'Enter more than 5 character.',
                      labelText: 'You',
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                    ),
                  ),
                )),
                Password(),
                RaisedButton(
                  onPressed: () => print(name),
                  child: Text("CLICK ME"),
                )
              ],
            ),
          ),
        ));
  }
}
