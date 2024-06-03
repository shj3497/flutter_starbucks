import 'package:flutter/material.dart';
import 'package:flutter_starbucks/widgets/bottom_navigator_widget.dart';
import 'package:flutter_starbucks/widgets/home_header_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        surfaceTintColor: Colors.transparent,
        centerTitle: false,
        title: const Text(
          '1',
          textAlign: TextAlign.end,
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   child: HomeHeader(),
            // ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigator(
        index: 2,
      ),
    );
  }
}
