class MenuItemModel {
  final int id;
  final String imgUrl;
  final String name;
  final int menuId;
  final int? beverageId;
  final int? foodId;

  MenuItemModel({
    required this.id,
    required this.imgUrl,
    required this.name,
    required this.menuId,
    this.beverageId,
    this.foodId,
  });
}
