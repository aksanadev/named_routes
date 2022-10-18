import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:named_routes/modules/auth/models/user_model.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserModel? user;
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // when the UI is painted, then this function is called, but if the UI is already painted any new variable change will not be reflected on the UI; UNLESS you rebuild the widget.... aka: SetState!
      setState(() {
        user = ModalRoute.of(context)!.settings.arguments as UserModel;
        log(user.toString());
      });
    });
    // it WILL get data in this format, UserModel..guerenteed
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('User Screen')),
        body: user != null
            ? Center(
                child: Column(
                children: [Text(user!.id), Text(user!.name)],
              ))
            : SizedBox(),
      ),
    );
  }
}
