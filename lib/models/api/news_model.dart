class NewsModel {
  final int id;
  final String title;
  final String? description;
  final String? thumbnail;
  final String period;
  final String? content;
  final NewsType type;
  final bool isFixed;
  final bool isHomeList;
  final String createdAt;
  final String updatedAt;

  NewsModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        description = json['description'],
        thumbnail = json['thumbnail'],
        period = json['period'],
        content = json['content'],
        type = NewsTypeModel.fromString(json['type']),
        isFixed = json['isFixed'],
        isHomeList = json['isHomeList'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'];
}

// ignore_for_file: constant_identifier_names
enum NewsType { EVENT, NEWS, NOTICE }

class NewsTypeModel {
  static NewsType fromString(String value) {
    return NewsType.values.firstWhere(
      (e) => e.toString().split('.').last == value,
      orElse: () => NewsType.EVENT,
    );
  }
}
