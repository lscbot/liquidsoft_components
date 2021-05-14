import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquidsoft_components/services/hexcolor.dart';

class LiquidSmallButton extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final double fontSize;
  final Function() onPressed;
  final Key? key;

  LiquidSmallButton(
      {required this.name,
      this.fontSize = 19.0,
      this.width = 88.0,
      this.height = 36.0,
      required this.onPressed,
      this.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: ElevatedButton(
        key: key,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(HexColor("#E4E5E8")),
          side:
              MaterialStateProperty.all(BorderSide(color: HexColor('#D9965B'))),
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(
            color: HexColor('#07305D'),
            fontSize: 19.0,
            fontFamily: 'Comfortaa',
          ),
        ),
      ),
    );
  }
}
