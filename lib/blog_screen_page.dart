import 'package:flutter/material.dart';
import 'custom_widget/PostWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'greeting_page.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        centerTitle: true,
        title: Text('VIP اخبار و سیگنال های'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 25,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  pushSignalDate('a'),
                  pushSignalDate('r'),
                  pushSignalDate('s'),
                  pushSignalDate('c'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


}
