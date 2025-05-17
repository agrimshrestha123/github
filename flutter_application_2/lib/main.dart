import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Flutter App', home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AboutListTile Example')),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            AboutListTile(
              icon: Icon(Icons.info),
              applicationIcon: FlutterLogo(),
              applicationLegalese: '© 2025 My Company',
              applicationName: 'Flutter App',
              applicationVersion: 'Version 0.0.1',
              aboutBoxChildren: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('This is an app created using Flutter.'),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Welcome to Flutter! Open the drawer to see the About section.',
        ),
      ),
    );
  }
}
