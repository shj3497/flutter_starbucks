import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigator extends StatefulWidget {
  final int index;
  const BottomNavigator({super.key, required this.index});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  void onItemTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        return context.go('/');
      case 1:
        print('pay');
        return;
      // return context.go('/pay');
      case 2:
        return context.go('/order');
      case 3:
        return context.go('/shop');
      case 4:
        return context.go('/other');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'bottomNav',
      child: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(247, 246, 247, 0.68),
        unselectedItemColor: const Color.fromRGBO(174, 174, 174, 1),
        selectedItemColor: const Color.fromRGBO(0, 183, 111, 1),
        selectedFontSize: 11,
        unselectedFontSize: 11,
        showUnselectedLabels: true,
        currentIndex: widget.index,
        onTap: (value) {
          onItemTap(value, context);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment,
            ),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.coffee,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.more_horiz,
            ),
            label: 'Other',
          ),
        ],
      ),
    );
  }
}
