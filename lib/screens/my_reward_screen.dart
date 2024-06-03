import 'package:flutter/material.dart';
import 'package:flutter_starbucks/widgets/benefits_by_level_widget.dart';
import 'package:flutter_starbucks/widgets/levelbar_widget.dart';

class MyRewardScreen extends StatelessWidget {
  const MyRewardScreen({super.key});
  static const int count = 12;
  static const int totalCount = 25;
  static const int remainCount = totalCount - count;

  double getWidth(BuildContext context) {
    var fullWidth = MediaQuery.of(context).size.width;

    return fullWidth - 44;
  }

  @override
  Widget build(BuildContext context) {
    var boxWidth = getWidth(context);
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          '$count',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(32, 32, 32, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Transform.translate(
                          offset: const Offset(0, -6),
                          child: const Row(
                            children: [
                              Text(
                                '/',
                                style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromRGBO(189, 188, 187, 1),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '$totalCount',
                                    style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF00B375),
                                    ),
                                  ),
                                  Text(
                                    '★',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF00B375),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(
                            vertical: 6,
                            horizontal: 18,
                          ),
                        ),
                        side: MaterialStatePropertyAll(
                          BorderSide(
                            color: Color(0xFF00B375),
                          ),
                        ),
                        overlayColor: MaterialStatePropertyAll(
                          Color.fromRGBO(0, 179, 117, 0.04),
                        ),
                      ),
                      child: const Text(
                        '별 히스토리',
                        style: TextStyle(
                          color: Color(0xFF00B375),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                LevelBar(
                  count: 8,
                  totalCount: 25,
                  boxWidth: boxWidth,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 18,
              horizontal: 24,
            ),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xFFf8f8f8),
            ),
            child: const Text(
              'Gold Level까지 18개의 별이 남았습니다.',
              style: TextStyle(
                fontSize: 12.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            children: [
              SizedBox(
                width: 24,
              ),
              Text(
                '회원 등급 변경 및 쿠폰 발행은 최대 25시간이 걸릴 수 있습니다.',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFFAEAEAE),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 24),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xFFF1F1F1),
                ),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '멤버십 등급',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Green Level',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF00B375),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 24),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '등급별 혜택',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                //TODO 등급별 혜택 List
                BenefitsByLevelWidget()
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF7F7F7),
            ),
            padding:
                const EdgeInsets.only(top: 16, bottom: 23, left: 22, right: 22),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                      'https://mz-hjshim.s3.amazonaws.com/static/starbucks/reward/reward_member-icon.jpg',
                      headers: const {
                        'Referer': 'https://mz-hjshim.s3.amazonaws.com'
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    '혁진님은 2022년 부터 Starbucks\nRewards Member 입니다.❤️',
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
