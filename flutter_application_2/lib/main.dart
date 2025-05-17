import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 39, 34, 101),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 100, height: 100, color: Colors.yellow),
            SizedBox(height: 40),
            Text(
              "agrim shrestha",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic,
                color: const Color.fromARGB(255, 39, 34, 101),
                backgroundColor: const Color.fromARGB(255, 217, 73, 73),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 59, 255, 157),
            ),
          ],
        ),
      ),
    ),
  );
}
//flutter widgets playlist 215 in flutte mapp