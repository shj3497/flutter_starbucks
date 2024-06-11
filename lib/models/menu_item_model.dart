class MenuItemModel {
  final num id;
  final String imgUrl;
  final String name;
  final num menuId;
  final num? beverageId;
  final num? foodId;

  MenuItemModel({
    required this.id,
    required this.imgUrl,
    required this.name,
    required this.menuId,
    this.beverageId,
    this.foodId,
  });
}
