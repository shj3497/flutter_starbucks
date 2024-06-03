import 'package:flutter/material.dart';
import 'package:flutter_starbucks/models/api/benefit_model.dart';
import 'package:flutter_starbucks/services/benefit_service.dart';

class BenefitsByLevelWidget extends StatefulWidget {
  const BenefitsByLevelWidget({super.key});

  @override
  State<BenefitsByLevelWidget> createState() => _BenefitsByLevelWidgetState();
}

class _BenefitsByLevelWidgetState extends State<BenefitsByLevelWidget> {
  Rank currentRank = Rank.WELCOME;
  late Future<List<BenefitModel>> allBenefit;
  @override
  void initState() {
    super.initState();
    allBenefit = BenefitService().getBenefits();
  }

  List<BenefitModel> filteredBenefit(
    List<BenefitModel> allBenefit,
    Rank selectedRank,
  ) {
    var filteredData = allBenefit.where((item) {
      var memberships = item.membership;
      return memberships
          .any((membership) => membership.rank.name == selectedRank.name);
    }).toList();
    filteredData
        .sort((a, b) => a.membership.length.compareTo(b.membership.length));
    return filteredData;
  }

  void handleChange(Rank rank) {
    setState(() {
      currentRank = rank;
    });
  }

  onShowDetail(BuildContext context, BenefitModel benefit) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Container(
                  width: 80,
                  height: 4,
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.network(
                    benefit.imgUrl,
                    headers: const {
                      'Referer': 'https://mz-hjshim.s3.amazonaws.com'
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  for (var rankItem in benefit.membership)
                    rankLabel(rank: rankItem.rank)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                benefit.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                benefit.description.replaceAll('\\n', '\n'),
                softWrap: true,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget tabButton({required Rank rank}) {
    var name =
        rank.name[0].toUpperCase() + rank.name.substring(1).toLowerCase();

    return TextButton(
      onPressed: () {
        handleChange(rank);
      },
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        ),
        overlayColor: MaterialStateProperty.all(
          const Color.fromRGBO(0, 0, 0, 0.04),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Text(
        name,
        style: TextStyle(
          color: currentRank == rank ? Colors.black : const Color(0xFFAEAEAE),
          fontSize: 16,
        ),
      ),
    );
  }

  Widget rankLabel({required Rank rank}) {
    Color labelColor;
    if (rank == Rank.GOLD) {
      labelColor = const Color(0xFFC9B57C);
    } else if (rank == Rank.GREEN) {
      labelColor = const Color(0xFF00B375);
    } else {
      labelColor = const Color(0xFFAEAEAE);
    }

    return Container(
      decoration: BoxDecoration(
        color: labelColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      margin: const EdgeInsets.only(right: 4),
      child: Text(
        rank.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-4, 0),
          child: Row(
            children: [
              tabButton(rank: Rank.WELCOME),
              const SizedBox(
                width: 1,
                height: 14,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFAEAEAE),
                ),
                width: 1,
                height: 14,
                margin: const EdgeInsets.symmetric(horizontal: 4),
              ),
              tabButton(rank: Rank.GREEN),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFAEAEAE),
                ),
                width: 1,
                height: 14,
                margin: const EdgeInsets.symmetric(horizontal: 4),
              ),
              tabButton(rank: Rank.GOLD),
            ],
          ),
        ),
        FutureBuilder(
          future: allBenefit,
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
            return Column(
              children: [
                for (var item in filteredBenefit(snapshot.data!, currentRank))
                  GestureDetector(
                    onTap: () => onShowDetail(context, item),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF3F2F1),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 10,
                        left: 12,
                        right: 20,
                      ),
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 57,
                            height: 57,
                            child: Image.network(
                              item.imgUrl,
                              headers: const {
                                'Referer': 'https://mz-hjshim.s3.amazonaws.com'
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.shortTitle,
                                  softWrap: true,
                                  style: const TextStyle(
                                    fontSize: 12.5,
                                    letterSpacing: -0.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    for (var rankItem in item.membership)
                                      rankLabel(rank: rankItem.rank)
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ],
            );
          },
        ),
      ],
    );
  }
}
