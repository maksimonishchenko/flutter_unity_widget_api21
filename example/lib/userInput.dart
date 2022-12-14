import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/actionButton.dart';
import 'package:flutter_unity_widget_example/game.dart';

class UserInput extends StatelessWidget {
  final Function onActionButtonPressed;
  UserInput(this.onActionButtonPressed);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          children: <Widget>[
            ActionButton(
              onActionButtonPressed,
              Icon(Icons.rotate_left),
              LastButtonPressed.ROTATE_LEFT,
            ),
            ActionButton(
              onActionButtonPressed,
              Icon(Icons.rotate_right),
              LastButtonPressed.ROTATE_RIGHT,
            ),
          ],
        ),
        Row(children: <Widget>[
          ActionButton(
              onActionButtonPressed,
              Icon(Icons.arrow_left),
              LastButtonPressed.LEFT,
            ),
            ActionButton(
              onActionButtonPressed,
              Icon(Icons.arrow_right),
              LastButtonPressed.RIGHT,
            ),
        ],),
      ],
    );
  }
}