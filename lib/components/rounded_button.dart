import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({
    Key? key,
    required this.colour,
    this.onPress,
    required this.title,
  }) : super(key: key);

  final Color colour;
  final Function()? onPress;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            '$title',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
