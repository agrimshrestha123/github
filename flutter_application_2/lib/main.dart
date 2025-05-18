import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home_outlined),
          centerTitle: true,
          title: Text('Trending'),
          actions: [Icon(Icons.more_vert)],
        ),
        body: SingleChildScrollView(
          child: Column(children: [NewsCard(), NewsCard(), NewsCard()]),
        ),
      ),
    ),
  );
}

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              "images/this.jpg",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Russian Warship: Moskva sinks in Black Sea',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Icon(Icons.schedule),
              Text('4hr ago'),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}
//60