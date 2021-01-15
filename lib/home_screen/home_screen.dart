import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:training2/home_screen/bottom_navigation_bar.dart';
import 'package:training2/home_screen/training_page.dart';
import 'package:training2/provider.dart';
import 'package:training2/user_screen.dart/user_page.dart';

class HomeScreen extends StatelessWidget {
  final pageList = <Widget>[
    UserPage(),
    TrainingPage(),
  ];
  final bototmNavigationBar = MyBottomNavigationBar();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer(
          builder: (context, watch, child) {
            final index = watch(homeScreenProvider.state).index;
            return pageList[index];
          },
        ),
        bottomNavigationBar: bototmNavigationBar,
      ),
    );
  }
}
