import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // bottom most widget
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.unsplash.com/photo-1614850715776-a749a85b4144?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3JhcGhpYyUyMGJhY2tncm91bmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            width: 150,
            height: 150,
            color: Colors.red,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
