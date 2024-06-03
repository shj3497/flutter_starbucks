import 'package:flutter/material.dart';
import 'package:flutter_starbucks/models/api/menu_model.dart';
import 'package:flutter_starbucks/services/menu_service.dart';
import 'package:flutter_starbucks/widgets/temputure_button_widget.dart';

class MenuDetailScreen extends StatelessWidget {
  final String menuId;
  final String imgUrl;
  final String tagId;
  final int? beverageId;
  final int? foodId;
  final String? title;
  static int appBarHeight = 115;

  final Future<MenuModel> menuDetail;
  MenuDetailScreen({
    super.key,
    required this.menuId,
    required this.imgUrl,
    required this.tagId,
    this.beverageId,
    this.foodId,
    this.title,
  }) : menuDetail = MenuService.getMenu(
          menuId: menuId,
          beverageId: beverageId,
          foodId: foodId,
        );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 335, // AppBar 높이 설정
            pinned: true, // 스크롤 시 상단에 고정
            surfaceTintColor: Colors.transparent,
            flexibleSpace: LayoutBuilder(
              builder: (context, constraints) {
                final double size = constraints.biggest.height;
                return FlexibleSpaceBar(
                  centerTitle: true,
                  title: Transform.translate(
                    offset: const Offset(-32, 0),
                    child: AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: size < appBarHeight * 1.5 ? 1.0 : 0,
                      child: Text(
                        title ?? '',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  background: Hero(
                    tag: tagId, // 동일한 태그 사용
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        color: Color(0xFF1b3c35),
                      ),
                      child: Image.network(
                        imgUrl,
                        headers: const {
                          'Referer': 'https://mz-hjshim.s3.amazonaws.com'
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight:
                        MediaQuery.of(context).size.height - appBarHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(23),
                    child: FutureBuilder(
                      future: menuDetail,
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
                        var data = snapshot.data!.beverages![0];
                        var options = snapshot.data!.menuOptions;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data.name,
                              style: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                letterSpacing: -0.66,
                              ),
                            ),
                            Text(
                              data.nameEN,
                              style: const TextStyle(
                                color: Color(0xFFAEAEAE),
                                fontSize: 13.5,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              data.description.replaceAll('\\n', '\n'),
                              style: const TextStyle(
                                color: Color(0xFF585858),
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              data.price,
                              style: const TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 34,
                              child: TemputureButton(
                                options: options ?? [],
                                isHot: data.isHot,
                                isIce: data.isIce,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            data.notice != null
                                ? Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFf7f7f7),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 13,
                                      vertical: 20,
                                    ),
                                    child: Text(
                                      data.notice!.replaceAll('\\n', '\n'),
                                      style: const TextStyle(
                                        color: Color(0xFF585858),
                                        fontSize: 11,
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
