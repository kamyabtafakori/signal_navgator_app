import 'package:flutter/material.dart';

class Utilities {

  navigateToPage(BuildContext context, Widget golClass) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => golClass,
      ),
    );
  }
}