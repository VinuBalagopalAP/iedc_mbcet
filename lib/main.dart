import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is my app'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  child: const Text('Hello World'),
                  decoration: const BoxDecoration(color: Colors.amber),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 50.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: Container(
                  child: const Text('Hello World'),
                  decoration: const BoxDecoration(color: Colors.red),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 50.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
              ),
              const SizedBox(
                height: 10.0,
              ),
              Image.asset('assets/logo_social.png'),
            ],
          ),
        ),
      ),
    );
  }
}
