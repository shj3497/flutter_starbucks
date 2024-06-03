import 'package:flutter/material.dart';
import 'package:flutter_starbucks/models/api/news_model.dart';
import 'package:flutter_starbucks/services/news_service.dart';
import 'package:flutter_starbucks/widgets/news_list_widget.dart';

class WhatsNewWidget extends StatefulWidget {
  const WhatsNewWidget({super.key});

  @override
  State<WhatsNewWidget> createState() => _WhatsNewWidgetState();
}

class _WhatsNewWidgetState extends State<WhatsNewWidget> {
  late Future<List<NewsModel>> news;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      news = NewsService.getNews(isHomeList: true, pageSize: 12);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Whta\'s New',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    overlayColor: MaterialStatePropertyAll(
                      Color.fromRGBO(0, 179, 117, 0.04),
                    ),
                  ),
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      color: Color(0xFF00B375),
                      fontSize: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          FutureBuilder(
            future: news,
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
              return NewsListWidget(data: snapshot.data!);
            },
          )
        ],
      ),
    );
  }
}
