import 'package:flutter/material.dart';
import 'package:flutter_game_demo/widgets/fill_button_gradiant.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            stops: [0, 0.5, 0.8],
            colors: [
              Color(0xff0035C1),
              Color(0xff2DB6BA),
              Color(0xffA181FF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              color: Colors.white.withOpacity(0.2),
              child: Column(
                children: [
                  _AppBarWidget(),
                  SizedBox(height: 20),
                  _ImageCard(),
                  SizedBox(height: 16),
                  _TitleText(),
                  SizedBox(height: 8),
                  _CountRewardText(),
                  SizedBox(height: 48),
                  _UserItem(
                    name: 'John Smith',
                    iconVisible: true,
                  ),
                  _DividerWhiteColor(),
                ],
              ),
            ),
            _UserItem(
              name: 'ปิ่นกมล เพื่อนรักกัน',
            ),
            SizedBox(height: 32),
            _DescriptionWidget(),
            SizedBox(height: 16),
            _ContactButton()
          ],
        ),
      ),
    );
  }
}

class _ContactButton extends StatelessWidget {
  const _ContactButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      height: 36,
      child: FillButtonGradiant(
        title: 'ต่อต่อแอดมิน',
      ),
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "สำหรับผู้โชคดีติดต่อแอดมินเพื่อรับรางวัลได้เลยค่ะ",
      textAlign: TextAlign.center,
      style: GoogleFonts.kanit(
        fontSize: 15.0,
        color: Colors.white,
      ),
    );
  }
}

class _DividerWhiteColor extends StatelessWidget {
  const _DividerWhiteColor({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Divider(
        height: 0,
        color: Colors.white,
        thickness: 1,
      ),
    );
  }
}

class _CountRewardText extends StatelessWidget {
  const _CountRewardText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "จำนวน 3 รางวัล",
      textAlign: TextAlign.center,
      style: GoogleFonts.kanit(
        fontSize: 15.0,
        color: Colors.white,
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
      "บัตร Starbucks ฿ 500",
      textAlign: TextAlign.center,
      style: GoogleFonts.kanit(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Image.asset('assets/images/starbuck.png'),
      ),
    );
  }
}

class _AppBarWidget extends StatelessWidget {
  const _AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        splashRadius: 20,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
        ),
      ),
      title: Text(
        'ประกาศผลผู้โชคดีรายวัน',
        style: GoogleFonts.kanit(
          color: Colors.white,
          fontSize: 17.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _UserItem extends StatelessWidget {
  const _UserItem({
    Key key,
    this.name,
    this.iconVisible = false,
  }) : super(key: key);
  final String name;
  final bool iconVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              imageCircle(),
              SizedBox(width: 16),
              nameWidget(),
            ],
          ),
          reward(),
        ],
      ),
    );
  }

  Row reward() {
    return Row(
      children: [
        iconVisible
            ? Image.asset(
                'assets/images/icon_winner.png',
                width: 20,
              )
            : SizedBox(),
        SizedBox(
          width: 9,
        ),
        Text(
          '1 รางวัล',
          style: GoogleFonts.kanit(
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Text nameWidget() {
    return Text(
      name,
      style: GoogleFonts.kanit(
        color: Colors.white,
        fontSize: 17.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Container imageCircle() {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/non.PNG'),
        ),
        shape: BoxShape.circle,
        color: Colors.redAccent,
        border: Border.all(color: Colors.white, width: 1),
      ),
    );
  }
}
