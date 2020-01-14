import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child: RaisedButton(
            child: Text("Sign in"),
          onPressed: ()=>listen("text"),
      ),
    ));
  }
}
void log(String string) {
  print("$string");
}

void listen(text){
  print(text);
}