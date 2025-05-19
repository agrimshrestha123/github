import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/news_detail_screen.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.imageUrl,
    required this.time,
    required this.title,
  });
  final String imageUrl;
  final String title;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageUrl,
              // child: Image.asset(
              //   "images/this.jpg",
              width: double.infinity,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return NewsDetailScreen();
                  },
                ),
              );
            },
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [Icon(Icons.schedule), Text(time), SizedBox(width: 10)],
          ),
        ],
      ),
    );
  }
}
//60