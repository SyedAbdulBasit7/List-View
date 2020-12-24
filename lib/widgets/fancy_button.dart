import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {
  final GestureTapCallback onPressed;

  FancyButton({@required this.onPressed});

  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.deepOrange,
      splashColor: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 20,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.explore,
              color: Colors.amber,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "ADD",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
