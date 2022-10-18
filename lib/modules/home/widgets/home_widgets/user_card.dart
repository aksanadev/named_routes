import 'package:flutter/material.dart';
import 'package:named_routes/modules/auth/models/user_model.dart';
import 'package:named_routes/routes/routes.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    required this.user,
    Key? key,
  }) : super(key: key);

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(Routes.userScreen, arguments: user);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Text(user.id),
              Text(user.name),
            ]),
          ),
        ),
      ),
    );
  }
}
