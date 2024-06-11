import 'package:flutter/material.dart';
import 'package:flutter_starbucks/generated-code/lib/api.dart';
import 'package:flutter_starbucks/widgets/hot_iced_select_button_widget.dart';
import 'package:flutter_starbucks/widgets/only_hot_button_widget.dart';
import 'package:flutter_starbucks/widgets/only_iced_button_widget.dart';
import 'package:go_router/go_router.dart';

class TemputureButton extends StatelessWidget {
  final bool isHot;
  final bool isIce;
  final List<MenuOption>? options;

  const TemputureButton({
    super.key,
    required this.options,
    required this.isHot,
    required this.isIce,
  });

  @override
  Widget build(BuildContext context) {
    if (options == null) {
      return const Text('Error options is null');
    }
    if (options!.length == 2) {
      return HotIcedSelectButtonWidget(
        isIce: isIce,
        isHot: isHot,
        onHotBtnClick: () {
          context.replace('/menu/${options![0].menuId}', extra: {
            "imgUrl": options![0].imgUrl,
            "tagId": options![0].imgUrl,
            "beverageId": options![0].id,
            "foodId": null,
            "title": options![0].name
          });
        },
        onIceBtnClick: () {
          context.replace('/menu/${options![1].menuId}', extra: {
            "imgUrl": options![1].imgUrl,
            "tagId": options![1].imgUrl,
            "beverageId": options![1].id,
            "foodId": null,
            "title": options![1].name
          });
        },
      );
    }
    if (options!.length == 1 && isIce == true && isHot == false) {
      return const OnlyIcedButtonWidget();
    }
    if (options!.length == 1 && isIce == false && isHot == true) {
      return const OnlyHotButtonWidget();
    }
    return Container();
  }
}
