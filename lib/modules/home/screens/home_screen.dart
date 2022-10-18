import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:named_routes/modules/auth/models/user_model.dart';
import 'package:named_routes/modules/home/widgets/home_widgets/user_card.dart';
import 'package:named_routes/routes/routes.dart';
import 'package:named_routes/utils/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          children: [
            ...users.map((user) {
              return UserCard(
                user: user,
              );
            }).toList(),
            Text("Home Screen"),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.firstScreen);
                },
                child: Text("First Screen")),
          ],
        )),
      ),
    );
  }
}
