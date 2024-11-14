import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfileScreen(),
    );
  }
}

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 66,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          ),
          backgroundColor: Colors.amber,
          title: const Text('My Profile'),
          actions: [
            IconButton(icon: const Icon(Icons.add), onPressed: () {}),
            IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
            IconButton(icon: const Icon(Icons.call), onPressed: () {}),
          ],
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(height: 8),
              CircleAvatar(
                radius: 48,
                child: Icon(Icons.icecream_outlined, size: 56),
              ),
              Text(
                'Ice cream is very delicious right?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              CircleAvatar(
                radius: 48,
                child: Icon(Icons.code, size: 56),
              ),
              Text(
                'Programming is not boring if you love it',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 24),
              CircleAvatar(
                radius: 48,
                child: Icon(Icons.egg_outlined, size: 56),
              ),
              Text(
                'If you submit code directly copy from ChatGPT then mark will 0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
