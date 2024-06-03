import 'package:flutter/material.dart';
import 'package:flutter_starbucks/widgets/bottom_navigator_widget.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        surfaceTintColor: Colors.transparent,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Text('hi')],
        ),
      ),
      bottomNavigationBar: const BottomNavigator(
        index: 3,
      ),
    );
  }
}
