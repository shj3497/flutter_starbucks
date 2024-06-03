import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotItWorksScreen extends StatelessWidget {
  const HotItWorksScreen({super.key});

  void onLinkOpen() async {
    var url = Uri.parse('https://www.starbucks.co.kr');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _imgBox(String url) {
    return SizedBox(
      width: 115,
      height: 115,
      child: Image.network(
        url,
        headers: const {'Referer': 'https://mz-hjshim.s3.amazonaws.com'},
      ),
    );
  }

  Widget _textBox({required String text, required int index}) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$index',
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          RichText(
            text: TextSpan(
              text: text,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 24, bottom: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '반갑습니다!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                RichText(
                  text: const TextSpan(
                    text:
                        'Starbucks Rewards 회원은 스타벅스 카드로 결제/주문할 때 마다 다양한 별 적립 혜택을 받을 수 있습니다.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _imgBox(
                'https://mz-hjshim.s3.amazonaws.com/static/starbucks/works/hot_it_works_img_01.jpg',
              ),
              _textBox(
                text:
                    '스타벅스 카드를 이용해 사이렌 오더 결제를 해보세요. 앱에서 스타벅스 카드 바코드를 띄워 매장에서 직접 결제할 수도 있습니다.',
                index: 1,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _imgBox(
                'https://mz-hjshim.s3.amazonaws.com/static/starbucks/works/hot_it_works_img_02.jpg',
              ),
              _textBox(
                text: '스타벅스 카드로 결제 시 별이 적립됩니다.',
                index: 2,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _imgBox(
                'https://mz-hjshim.s3.amazonaws.com/static/starbucks/works/hot_it_works_img_03.jpg',
              ),
              _textBox(
                text:
                    '쌓이는 별에 따라 레벨이 오르고 골드 레벨부터 별 12개 적립 시마다 무료 음료 쿠폰을 제공합 니다.',
                index: 3,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _imgBox(
                'https://mz-hjshim.s3.amazonaws.com/static/starbucks/works/hot_it_works_img_04.jpg',
              ),
              _textBox(
                text:
                    '스타벅스 리워드 회원만을 위한 특별한 이벤트에 참여하시면, 더 많은 별을 적립할 수 있습니다. 개인컵 사용, 브런치 유어 웨이 등을 통해서도 추가 별을 적립해 보세요!',
                index: 4,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 23,
                ),
                const Divider(
                  height: 2,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      '별 적립 혜택에 대한 자세한 내용은 ',
                      style: TextStyle(
                          color: Color(0xFFAEAEAE), fontSize: 12, height: 1.75),
                    ),
                    GestureDetector(
                      onTap: onLinkOpen,
                      child: const Text(
                        '스타벅스 홈페이지',
                        style: TextStyle(
                          color: Color(0xFFAEAEAE),
                          fontSize: 12,
                          height: 1.75,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const Text(
                      '를 참고해 주세요.',
                      style: TextStyle(
                        color: Color(0xFFAEAEAE),
                        fontSize: 12,
                        height: 1.75,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
