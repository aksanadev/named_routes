import 'package:flutter/material.dart';
import 'package:named_routes/routes/routes.dart';

class NamesRoutes extends StatelessWidget {
  const NamesRoutes({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routes.splashScreen,
      routes: Routes.routes,
    );

  }
}