import 'package:flutter/material.dart';
import 'package:flutter_starbucks/screens/how_it_works_screen.dart';
import 'package:flutter_starbucks/screens/my_reward_screen.dart';
import 'package:go_router/go_router.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  final ScrollController _scrollController = ScrollController();
  bool isView = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, initialIndex: 0, vsync: this);
    _scrollController.addListener(() {
      scrollListener();
    });
    // _controller.addListener(() {
    //   setState(() {
    //     _selectedIndex = _controller.index;
    //   });
    //   print("selected Index : ${_controller.index.toString()}");
    // });
  }

  void scrollListener() async {
    // print(_scrollController.offset);
    // setState(() {
    //   if (_scrollController.offset > 10) {
    //     isView = true;
    //   } else {
    //     isView = false;
    //   }
    // });
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
      indicatorColor: Colors.black,
      indicatorWeight: 3,
      indicatorSize: TabBarIndicatorSize.tab,
      tabAlignment: TabAlignment.start,
      tabs: const [
        Tab(text: 'My Rewards'),
        Tab(text: 'Hot it works'),
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
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: Column(
              children: [
                const Row(
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      'Starbucks Rewards',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                _tabBar(),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _controller,
          children: [
            const SingleChildScrollView(
              child: MyRewardScreen(),
            ),
            SingleChildScrollView(
              controller: _scrollController,
              child: const HotItWorksScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
