import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FillButtonGradiant extends StatelessWidget {
  const FillButtonGradiant({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) onPressed();
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(0),
      ),
      child: Ink(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffFFF440),
                Color(0xffffA943),
              ],
              //stops: [0, 0.7],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(4.0)),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.kanit(
              color: Colors.black,
              fontSize: 17.0,
            ),
          ),
        ),
      ),
    );
  }
}
