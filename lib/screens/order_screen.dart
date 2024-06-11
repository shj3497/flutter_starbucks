import 'package:flutter/material.dart';
import 'package:flutter_starbucks/widgets/all_menu_list_widget.dart';
import 'package:flutter_starbucks/widgets/bottom_navigator_widget.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with TickerProviderStateMixin {
  late TabController _controller;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);
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
        fontWeight: FontWeight.bold,
      ),
      labelColor: Colors.black,
      unselectedLabelColor: const Color(0xFF585858),
      overlayColor: const MaterialStatePropertyAll(Colors.transparent),
      indicatorColor: const Color(0xFF00B375),
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.start,
      tabs: const [
        Tab(text: '전체 메뉴'),
        Tab(text: '나만의 메뉴'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          // toolbarHeight: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          title: const Text(
            'Order',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Column(
              children: [
                _tabBar(),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: const [
            AllMenuListWidget(),
            // SingleChildScrollView(
            //   controller: _scrollController,
            //   child: const AllMenuListWidget(),
            // ),
            SingleChildScrollView(
              child: Text('하트표시된것만 표시'),
            )
          ],
        ),
        bottomNavigationBar: const BottomNavigator(
          index: 2,
        ),
      ),
    );
  }
}
