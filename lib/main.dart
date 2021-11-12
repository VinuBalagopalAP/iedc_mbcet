import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iedc_mbcet/splitted_widgets/arrow_button.dart';
import 'package:iedc_mbcet/splitted_widgets/logos.dart';
import 'package:iedc_mbcet/splitted_widgets/topbar.dart';
import 'package:iedc_mbcet/splitted_widgets/welcome_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        // appBar: AppBar(
        //   centerTitle: false,
        //   title: const Text("Hello World"),
        //   actions: [
        //     Container(
        //       margin: const EdgeInsets.only(right: 20.5),
        //       child: const CircleAvatar(
        //         backgroundImage: NetworkImage(
        //           'https://static.vecteezy.com/system/resources/thumbnails/000/241/070/small/flat-boy-with-vintage-glasses-avatar-vector-illustration.jpg',
        //         ),
        //       ),
        //     ),
        //   ],
        // ),

        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // MyAppName(),
                  // BlackholeImage(),
                  // MyPrimaryButton(buttonText: 'Compose Email'),
                  // MyPrimaryButton(buttonText: 'Add New Event'),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  TopBar(),
                  SizedBox(
                    height: 75,
                  ),

                  WelcomeText(),
                  SizedBox(
                    height: 25,
                  ),

                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Email Address",
                      // suffixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    // keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                      // suffixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Logos(),
                  SizedBox(
                    height: 150,
                  ),

                  ArrowButton(),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyAppName extends StatelessWidget {
  const MyAppName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'IEDC MBCET',
      style: TextStyle(
        color: Colors.red,
        fontSize: 20,
      ),
    );
  }
}

class BlackholeImage extends StatelessWidget {
  const BlackholeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.newscientist.com/wp-content/uploads/2020/10/28124436/f0254420-black_hole_web.jpg',
      width: 300,
    );
  }
}

class MyPrimaryButton extends StatelessWidget {
  final String buttonText;
  const MyPrimaryButton({Key? key, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {},
      label: Text(buttonText),
    );
  }
}
