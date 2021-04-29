import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game_demo/dialogs/confirm_dialog.dart';
import 'package:flutter_game_demo/pages/result_page.dart';
import 'package:flutter_game_demo/widgets/fill_button_gradiant.dart';
import 'package:flutter_game_demo/widgets/outline_button_gradaint.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyTicketDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      insetPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 13),
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            gradient: LinearGradient(
              colors: [
                Color(0xff1E6E9B),
                Color(0xff2C1766),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _DailyPriceLogo(),
              SizedBox(height: 24),
              _TitleText(),
              SizedBox(height: 16),
              _ImageCard(),
              SizedBox(height: 16),
              _CountTime(),
              SizedBox(height: 24),
              _ButtonBuyTicket(),
              SizedBox(height: 24),
              _BoughtText(),
              SizedBox(height: 8),
              _SoldText(),
              SizedBox(height: 16),
              _BottomLayout(),
            ],
          ),
        ),
        CloseButton()
      ],
    );
  }
}

class CloseButton extends StatelessWidget {
  const CloseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 16,
      right: 16,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.close_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _BottomLayout extends StatelessWidget {
  const _BottomLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff182354),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 40,
              child: OutlineButtonGradiant(
                title: 'ดูผลรางวัลรอบที่แล้ว',
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultPage()),
                  );
                },
              ),
            ),
            SizedBox(height: 16),
            Text(
              "-ประกาศผลทุกวันเวลา 23.59 น.-",
              textAlign: TextAlign.center,
              style: GoogleFonts.kanit(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SoldText extends StatelessWidget {
  const _SoldText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "(ตั๋วขายไปแล้วทั้งหมด xxxx ตั๋ว)",
      textAlign: TextAlign.center,
      style: GoogleFonts.kanit(
        fontSize: 13,
        color: Colors.grey,
      ),
    );
  }
}

class _BoughtText extends StatelessWidget {
  const _BoughtText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "ซื้อแล้ว xx ตั๋ว",
      textAlign: TextAlign.center,
      style: GoogleFonts.kanit(
        fontSize: 13,
        color: Colors.white,
      ),
    );
  }
}

class _ButtonBuyTicket extends StatelessWidget {
  const _ButtonBuyTicket({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: FillButtonGradiant(
          title: 'ซื้อตั๋วลุ้นรางวัล 100 TAP',
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ConfirmDialog();
              },
            );
          },
        ),
      ),
    );
  }
}

class _CountTime extends StatelessWidget {
  const _CountTime({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 24,
          ),
          primary: Color(0xff182354),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80.0),
          ),
        ),
        child: Text(
          "เหลือเวลา 02 : 58",
          textAlign: TextAlign.center,
          style: GoogleFonts.kanit(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Image.asset('assets/images/starbuck.png'),
          ),
          Positioned(
            bottom: 8,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffDD3859),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'x5',
                  style: GoogleFonts.kanit(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  const _TitleText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'ลุ้น บัตร Starbucks ฿ 500 \n จำนวน 5 รางวัล',
      textAlign: TextAlign.center,
      style: GoogleFonts.kanit(
        wordSpacing: 0.07,
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _DailyPriceLogo extends StatelessWidget {
  const _DailyPriceLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ShaderMask(
            shaderCallback: (r) => LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.4, 0.5, 0.7],
              colors: <Color>[
                Color(0xffDD3859),
                Color(0xffFF8800),
                Color(0xffDD3859),
              ],
            ).createShader(
              r,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'DAILY PRIZE',
                style: GoogleFonts.kanit(
                    shadows: [
                      Shadow(
                        blurRadius: 40.0,
                        color: Color(0xffDD3859),
                        offset: Offset(0, 0),
                      ),
                    ],
                    letterSpacing: 2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 2.5
                      ..color = Colors.white),
              ),
            ),
          ),
        ),
        Text(
          'DAILY PRIZE',
          style: GoogleFonts.kanit(
            shadows: [
              Shadow(
                blurRadius: 40.0,
                color: Color(0xffDD3859),
                offset: Offset(0, 0),
              ),
            ],
            letterSpacing: 2,
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
