import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('this is appbar')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'do it again';
                  });
                },
                child: Text(buttonName),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    buttonName = 'donot it again';
                  });
                },
                child: Text(buttonName),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.pink),
              label: 'favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
          ],
          // backgroundColor: const Color.fromARGB(255, 145, 174, 198),
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
