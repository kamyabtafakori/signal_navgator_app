import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signal_navgator_app/Utilities.dart';
import 'package:signal_navgator_app/forget_password_page.dart';
import 'signup_operation_page.dart';
import 'blog_screen_page.dart';


class LoginPage extends StatelessWidget implements Utilities{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity, height: 80),
            getLoginImage(),
            SizedBox(height: 50),
            getSignUpBtn(context),
            SizedBox(height: 5),
            getLoginBtn(context),
            geForgetBtn(context)
          ],
        ),
      ),
    );
  }

  Widget getLoginImage() {
    return Image(
      width: 300,
      image: AssetImage('images/login-page-avatar.png'),
    );
  }

 Widget getSignUpBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        minimumSize: Size(300, 50),
        side: BorderSide(color: Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {
        navigateToPage(context, SignUpOperationPage());
      },
      child: Text(
        'ثبت نـام',
        style: TextStyle(fontSize: 18),
      ),
    );
 }

 Widget getLoginBtn(BuildContext context) {
  return TextButton(
     style: ButtonStyle(
       minimumSize: MaterialStateProperty.all(
         Size(300, 50),
       ),
       shape: MaterialStateProperty.all(
         RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10),
         ),
       ),
       backgroundColor: MaterialStateProperty.all(Colors.black),
     ),
     onPressed: () {
       navigateToPage(context, BlogScreen());
     },
     child: Text(
       'ورود',
       style: TextStyle(color: Colors.white, fontSize: 18),
     ),
   );
 }

 Widget geForgetBtn(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        alignment: Alignment.topRight,
        minimumSize: MaterialStateProperty.all(
          Size(300, 50),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: () {
        navigateToPage(context, ForgetPasswordOperation());
      },
      child: Text(
        '? فراموشی رمز عبور',
        style: TextStyle(color: Colors.black, fontSize: 18),
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