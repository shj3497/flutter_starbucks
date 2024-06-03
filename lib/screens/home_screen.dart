import 'package:flutter/material.dart';
import 'package:flutter_starbucks/widgets/bottom_navigator_widget.dart';
import 'package:flutter_starbucks/widgets/home_header_widget.dart';
import 'package:flutter_starbucks/widgets/recommended_menu_widget.dart';
import 'package:flutter_starbucks/widgets/what_new_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        surfaceTintColor: Colors.transparent,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: HomeHeader(),
            ),
            SizedBox(
              height: 40,
            ),
            RecommendedMenu(),
            SizedBox(
              height: 40,
            ),
            WhatsNewWidget(),
            SizedBox(
              height: 40,
            ),
            // DessertMenu(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigator(
        index: 0,
      ),
    );
  }
}
