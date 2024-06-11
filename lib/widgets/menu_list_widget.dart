import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_starbucks/models/menu_item_model.dart';
import 'package:go_router/go_router.dart';

class MenuList extends StatelessWidget {
  final List<MenuItemModel> data;

  const MenuList({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemBuilder: (context, index) {
          var menuItem = data[index];
          return Row(
            children: [
              if (index == 0)
                const SizedBox(
                  width: 20,
                ),
              MenuItem(
                menu: menuItem,
              ),
              if (index == data.length - 1)
                const SizedBox(
                  width: 20,
                ),
            ],
          );
        },
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final MenuItemModel menu;

  const MenuItem({
    super.key,
    required this.menu,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/menu/${menu.menuId}', extra: {
          "imgUrl": menu.imgUrl,
          "tagId": menu.imgUrl,
          "beverageId": menu.beverageId,
          "foodId": menu.foodId,
          "title": menu.name,
        });
      },
      child: SizedBox(
        width: 130,
        child: Column(
          children: [
            Hero(
              tag: menu.imgUrl,
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1b3c35),
                ),
                width: 130,
                height: 130,
                child: Image.network(
                  menu.imgUrl,
                  headers: const {
                    'Referer': 'https://mz-hjshim.s3.amazonaws.com'
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              menu.name,
              softWrap: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
