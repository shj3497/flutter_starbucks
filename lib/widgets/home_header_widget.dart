import 'package:flutter/material.dart';
import 'package:flutter_starbucks/widgets/levelbar_widget.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeHeader extends StatelessWidget {
  static const int count = 12;
  static const int totalCount = 25;
  static const int remainCount = totalCount - count;
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '혁진님과 함께\nDream Away🌟',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        GestureDetector(
          onTap: () {
            context.push('/reward');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$remainCount ★until Gold Level',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF00B375),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LevelBar(
                    count: count,
                    totalCount: totalCount,
                  ),
                ],
              ),
              const SizedBox(
                width: 30,
              ),
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
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print("go to what's new page");
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/mail.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "What's New",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print('go to coupon page');
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/ticket.svg'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Coupon',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            IconButton(
              onPressed: () {
                print('alert 페이지로 이동');
              },
              icon: SvgPicture.asset('assets/icons/alert.svg'),
            ),
          ],
        )
      ],
    );
  }
}
