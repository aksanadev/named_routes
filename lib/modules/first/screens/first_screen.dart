import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:named_routes/routes/routes.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Text("First Screen"),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.secondScreen);
              },
              child: Text('Second Screen')),
        ],
      )),
    );
  }
}
