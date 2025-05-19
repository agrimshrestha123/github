import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/news_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home_outlined),
        centerTitle: true,
        title: Text(
          'Trending',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsCard(
              imageUrl: "https://picsum.photos/seed/picsum/200/300",
              title: "This Mountain",
              time: "4hr ago",
            ),
            NewsCard(
              imageUrl: "https://picsum.photos/id/237/200/300",
              title: "This dog",
              time: "5hr ago",
            ),
            NewsCard(
              imageUrl: "https://picsum.photos/200/300?grayscale",
              title: "This seal",
              time: "6hr ago",
            ),
            NewsCard(
              imageUrl: "https://picsum.photos/id/870/200/300?grayscale&blur=2",
              title: "Dharahara",
              time: "7hr ago",
            ),
          ],
        ),
      ),
    );
  }
}
