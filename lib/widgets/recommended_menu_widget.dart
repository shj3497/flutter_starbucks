import 'package:flutter/material.dart';
import 'package:flutter_starbucks/generated-code/lib/api.dart';
import 'package:flutter_starbucks/models/menu_item_model.dart';
import 'package:flutter_starbucks/services/beverage_service.dart';
import 'package:flutter_starbucks/widgets/menu_list_widget.dart';

class RecommendedMenu extends StatefulWidget {
  const RecommendedMenu({super.key});

  @override
  State<RecommendedMenu> createState() => _RecommendedMenuState();
}

class _RecommendedMenuState extends State<RecommendedMenu> {
  late Future<PaginatedBeverage?> beverages;

  @override
  void initState() {
    super.initState();
    beverages = BeverageService().beverages();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  '고객님을 위한 추천 메뉴',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FutureBuilder(
            future: beverages,
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const SizedBox(
                  width: 20,
                  height: 20,
                  child: Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Color(0xFF1b3c35),
                    ),
                  ),
                );
              }

              List<MenuItemModel> data = [];
              for (var item in snapshot.data!.nodes) {
                data.add(MenuItemModel(
                  id: item.id,
                  name: item.name,
                  imgUrl: item.imgUrl,
                  menuId: item.menuId,
                  beverageId: item.id,
                ));
              }
              return MenuList(data: data);
            },
          )
        ],
      ),
    );
  }
}
