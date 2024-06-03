import 'package:flutter_starbucks/screens/home_screen.dart';
import 'package:flutter_starbucks/screens/menu_detail_screen.dart';
import 'package:flutter_starbucks/screens/news_screen.dart';
import 'package:flutter_starbucks/screens/order_screen.dart';
import 'package:flutter_starbucks/screens/reward_screen.dart';
import 'package:flutter_starbucks/screens/shop_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/reward',
      builder: (context, state) {
        //TODO queryParam 같은걸로 MyRewards인지, Hot it Works 탭인지를 구분해주면 좋을듯
        return const RewardScreen();
      },
    ),
    GoRoute(
      path: '/order',
      builder: (context, state) {
        return const OrderScreen();
      },
    ),
    GoRoute(
      path: '/menu/:menuId',
      builder: (context, state) {
        final menuId = state.pathParameters['menuId'];
        var extra = (state.extra as Map<String, dynamic>);
        var imgUrl = extra['imgUrl'];
        var tagId = extra['tagId'];
        var beverageId = extra['beverageId'];
        var foodId = extra['foodId'];
        var title = extra['title'];

        return MenuDetailScreen(
          menuId: menuId ?? '',
          imgUrl: imgUrl,
          tagId: tagId,
          beverageId: beverageId,
          foodId: foodId,
          title: title,
        );
      },
    ),
    GoRoute(
      path: '/shop',
      builder: (context, state) {
        return const ShopScreen();
      },
    ),
    GoRoute(
      path: '/news',
      builder: (context, state) {
        return const NewsScreen();
      },
    )
  ],
);
