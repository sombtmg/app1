import 'package:flutter/material.dart';


class Text_Field1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextEditingController _controller = TextEditingController();
    _controller.addListener((){
      print (_controller.text);
    });


    return Center(
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
    ));
  }
}
