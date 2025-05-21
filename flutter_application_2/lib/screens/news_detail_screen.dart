import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({
    super.key,
    required this.description,
    required this.imageUrl,
    required this.time,
    required this.title,
  });
  final String title;
  final String description;
  final String imageUrl;
  final String time;
  @override
  Widget build(BuildContext context) {
    return MoreInfo(
      imageUrl: imageUrl,
      title: title,
      time: time,
      description: description,
    );
  }
}

class MoreInfo extends StatelessWidget {
  const MoreInfo({
    super.key,
    required this.imageUrl,
    required this.time,
    required this.title,
    required this.description,
  });
  final String imageUrl;
  final String title;
  final String time;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
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
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.schedule),
                  Text(time),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 30),
              Text(description, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
