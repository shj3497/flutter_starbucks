import 'package:flutter_starbucks/models/api/beverage_model.dart';

class MenuModel {
  late int id;
  late String name;
  late String createdAt;
  late String updatedAt;
  late List<BeverageModel>? beverages;
  late List<MenuOption>? menuOptions;

  MenuModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];

    if (json['beverages'] != null) {
      final List<BeverageModel> beverageInstances = [];
      for (var beverage in json['beverages']) {
        beverageInstances.add(BeverageModel.fromJson(beverage));
      }
      beverages = beverageInstances;
    }
    if (json['menuOptions'] != null) {
      final List<MenuOption> menuOptionInstances = [];
      for (var menuOption in json['menuOptions']) {
        menuOptionInstances.add(MenuOption.fromJson(menuOption));
      }
      menuOptions = menuOptionInstances;
    }
  }
}

class MenuOption {
  final int id;
  final int menuId;
  final String name;
  final String imgUrl;
  final bool isHot;
  final bool isIce;

  MenuOption.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        menuId = json['menuId'],
        name = json['name'],
        imgUrl = json['imgUrl'],
        isHot = json['isHot'],
        isIce = json['isIce'];
}
