import 'dart:math';

import 'package:ebook_clone_app/pages/home_page.dart';
import 'package:ebook_clone_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../json/root_app_json.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        HomePage(),
        Center(
          child: Text(
            "My Book Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "Store Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Center(
          child: Text(
            "Favourite Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget getFooter() {
    return SalomonBottomBar(
      currentIndex: pageIndex,
      selectedItemColor: primary,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
      items: List.generate(rootAppJson.length, (index) {
        return SalomonBottomBarItem(
          icon: Icon(rootAppJson[index]['icon']),
          title: Text(rootAppJson[index]['text']),
        );
      }),
    );
  }
}