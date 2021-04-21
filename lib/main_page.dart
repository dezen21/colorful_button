import 'package:colorful_button/colorful_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colorful Button"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorfulButton(Colors.pink, Colors.blue, Icons.ac_unit),
            ColorfulButton(Colors.amber, Colors.red, Icons.comment),
            ColorfulButton(Colors.green, Colors.purple, Icons.computer),
            ColorfulButton(Colors.blue, Colors.black, Icons.contact_phone)
          ],
        ),
      ),
    );
  }
}
