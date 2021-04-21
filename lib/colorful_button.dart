import 'dart:math';

import 'package:flutter/material.dart';

class ColorfulButton extends StatefulWidget {
  Color mainColor, secoundColor;
  IconData iconData;

  @override
  _ColorfulButtonState createState() =>
      _ColorfulButtonState(mainColor, secoundColor, iconData);
  ColorfulButton(this.mainColor, this.secoundColor, this.iconData);
}

class _ColorfulButtonState extends State<ColorfulButton> {
  bool isPressed = false;
  Color mainColor, secoundColor;
  IconData iconData;

  _ColorfulButtonState(this.mainColor, this.secoundColor, this.iconData);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi / 4,
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          borderRadius: BorderRadius.circular(15),
          elevation: (isPressed) ? 5 : 10,
          shadowColor: (isPressed) ? secoundColor : mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: (isPressed) ? secoundColor : mainColor,
                      child: Transform.rotate(
                        angle: -pi / 4,
                        child: Icon(
                          iconData,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
