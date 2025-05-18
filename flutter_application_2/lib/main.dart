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
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/this.jpg",
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
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
        ),
      ),
    ),
  );
}
//60