class BenefitModel {
  final int id;
  final String shortTitle;
  final String title;
  final String description;
  final String imgUrl;
  final String createdAt;
  final String updatedAt;
  final List<MembershipBenefitModel> membership;

  BenefitModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        shortTitle = json['shortTitle'],
        title = json['title'],
        description = json['description'],
        imgUrl = json['imgUrl'],
        createdAt = json['createdAt'],
        updatedAt = json['updatedAt'],
        membership = [
          for (var item in json['membership'])
            MembershipBenefitModel.fromJson(item)
        ];
}

// ignore: constant_identifier_names
enum Rank { WELCOME, GREEN, GOLD }

class MembershipBenefitModel {
  final Rank rank;

  MembershipBenefitModel.fromJson(Map<String, dynamic> json)
      : rank = Rank.values.firstWhere(
          (element) => element.toString().split('.').last == json['rank'],
          orElse: () => Rank.WELCOME,
        );
}
