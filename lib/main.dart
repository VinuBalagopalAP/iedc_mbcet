import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          actions: [
            IconButton(
              onPressed: () {
                print('Button clicked');
              },
              icon: Icon(Icons.arrow_left),
            ),
          ],
          title: Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 24.0,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    color: Color(0xFF000000),
                  ),
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Hello World',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 24.0,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    color: Colors.amber,
                  ),
                  child: const Center(
                    child: Text(
                      'Hello World',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Image.network(
                    'https://mbcet.ac.in/wp-content/uploads/2019/04/mbcet.jpg'),
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset('assets/mbcet.jpg'),
                const SizedBox(
                  height: 10.0,
                ),
                Image.network(
                    'https://mbcet.ac.in/wp-content/uploads/2019/04/mbcet.jpg'),
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset('assets/mbcet.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
