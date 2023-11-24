import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';
import 'login_page.dart';
import 'Utilities.dart';

class GreetingPage extends StatelessWidget implements Utilities {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(0, 70, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              getGreetingTextRow(),
              SizedBox(height: 50),
              getGreetingImage(),
              SizedBox(height: 50),
              getGreetingButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget getGreetingTextRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'خوش آمدید',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10),
        Icon(
          FontAwesomeIcons.arrowRightToBracket,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget getGreetingImage() {
    return Image(
      width: 350,
      image: AssetImage('images/greeting-page-avatar.png'),
    );
  }

  Widget getGreetingButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(300, 50),
        side: BorderSide(color: Colors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        navigateToPage(context,LoginPage());
      },
      child: Text(
        '! بزن بریم ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  @override
  navigateToPage(BuildContext context, Widget golClass) {
    Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) => golClass,
        ),
    );
  }
}
