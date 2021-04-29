import 'package:flutter/material.dart';
import 'package:flutter_game_demo/dialogs/buy_ticket_dialog.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

final Shader linearGradient = LinearGradient(
  colors: <Color>[
    Color(0xffFFF440),
    Color(0xffffA943),
  ],
).createShader(
  Rect.fromLTWH(
    0.0,
    0.0,
    200.0,
    70.0,
  ),
);

final Shader linearGradient2 = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[
    Color(0xffDD3859),
    Color(0xffFF8800),
    Color(0xffDD3859),
  ],
).createShader(
  Rect.fromLTWH(
    0.0,
    0.0,
    20.0,
    200.0,
  ),
);

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black87,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlineGradientButton(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return BuyTicketDialog();
                      },
                    );
                  },
                  child: Text(
                    'show',
                    style: new TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFDA48),
                      Color(0xffF2C94C),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  strokeWidth: 2,
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  radius: Radius.circular(4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
