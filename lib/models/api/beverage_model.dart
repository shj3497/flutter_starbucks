class BeverageModel {
  final int id;
  final int menuId;
  final String name;
  final String nameEN;
  final String description;
  final String price;
  final String? notice;
  final String imgUrl;
  final BeverageCategory category;
  final bool isBest;
  final bool isNew;
  final bool isRecommended;
  final bool isHot;
  final bool isIce;
  final String createdAt;
  final String updatedAt;

  BeverageModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        menuId = json['menuId'],
        name = json['name'],
        nameEN = json['name_en'],
        description = json['description'],
        price = json['price'],
        notice = json['notice'],
        imgUrl = json['imgUrl'],
        category = BeverageCategoryModel.fromString(json['category']),
        isBest = json['isBest'],
        isNew = json['isNew'],
        isRecommended = json['isRecommended'],
        isHot = json['isHot'],
        isIce = json['isIce'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];
}

// ignore_for_file: constant_identifier_names
enum BeverageCategory {
  FIZZIO,
  ESPRESSO,
  COLDBREW,
  BLONDE,
  DECAF,
  RESERVE_ESPRESSO,
  RESERVE_DRIP,
  TEAVANA,
  REFRESHERS,
  BLENDED,
  BREWED,
  OTHERS,
  TRENTA,
  TOGOBAG,
  RTD,
  SPECIAL_STORE,
}

class BeverageCategoryModel {
  static BeverageCategory fromString(String value) {
    return BeverageCategory.values.firstWhere(
      (element) => element.toString().split('.').last == value,
      orElse: () => BeverageCategory.ESPRESSO,
    );
  }
}
