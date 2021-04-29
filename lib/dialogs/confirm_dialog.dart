import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game_demo/widgets/fill_button_gradiant.dart';
import 'package:flutter_game_demo/widgets/outline_button_gradaint.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff03123C),
            Color(0xff24428B),
          ],
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "ต้องการซื้อตั๋วลุ้นรางวัลใช่หรือไม่",
            style: GoogleFonts.kanit(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlineButtonGradiant(
                    title: 'ยกเลิก',
                     onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: FillButtonGradiant(
                    title: 'ตกลง',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
