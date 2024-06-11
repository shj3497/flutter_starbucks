import 'package:flutter/material.dart';

class AllMenuListWidget extends StatefulWidget {
  const AllMenuListWidget({super.key});

  @override
  State<AllMenuListWidget> createState() => _AllMenuListWidgetState();
}

class _AllMenuListWidgetState extends State<AllMenuListWidget>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  Widget _tabBar() {
    return TabBar(
      controller: _controller,
      isScrollable: true,
      labelStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      unselectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      labelColor: Colors.black,
      unselectedLabelColor: const Color(0xFF585858),
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      indicatorColor: Colors.transparent,
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.start,
      labelPadding: const EdgeInsets.symmetric(horizontal: 18),
      tabs: const [
        Tab(text: '음료'),
        Tab(text: '푸드'),
        Tab(text: '상품'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxHeight: 150.0),
            child: _tabBar(),
          ),
          Expanded(
            child: TabBarView(
              controller: _controller,
              children: const [
                Text('음료'),
                Text('푸드'),
                Text('상품'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
