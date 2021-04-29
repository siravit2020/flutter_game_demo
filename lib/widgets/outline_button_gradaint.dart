import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class OutlineButtonGradiant extends StatelessWidget {
  const OutlineButtonGradiant({
    Key key,
    this.title, this.onPressed,
  }) : super(key: key);
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      onTap: () {
        if (onPressed != null) onPressed();
      },
      child: Center(
        child: ShaderMask(
          shaderCallback: (r) => LinearGradient(
            colors: <Color>[
              Color(0xffFFF440),
              Color(0xffffA943),
            ],
          ).createShader(
            r,
          ),
          child: Text(
            title,
            style: GoogleFonts.kanit(
              fontSize: 17.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      gradient: LinearGradient(
        colors: [
          Color(0xffFFDA48),
          Color(0xffF2C94C),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      strokeWidth: 1,
      radius: Radius.circular(4),
      padding: EdgeInsets.all(0),
    );
  }
}
