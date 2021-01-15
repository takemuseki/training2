import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:training2/provider.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MyBottomNavigationBar extends HookWidget {
  static const items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'user',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.label),
      label: 'training',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    print('bottomNavigation');

    return BottomNavigationBar(
      items: items,
      currentIndex: 0,
      onTap: (index) {
        context.read(homeScreenProvider).changeIndex(index: index);
      },
    );
  }
}
