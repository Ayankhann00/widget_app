import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widget App'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://source.unsplash.com/300x200/?nature',
              width: 500,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.favorite, color: Colors.red, size: 30),
                SizedBox(width: 10),
                Text(
                  'Flutter Widgets',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Icon(Icons.favorite, color: Colors.red, size: 30),
              ],
            ),
            const SizedBox(height: 80),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button Pressed!')),
                );
              },
              child: const Text('click the button'),
            ),
          ],
        ),
      ),
    );
  }
}
