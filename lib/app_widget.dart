import 'package:flutter/material.dart';
import 'package:testing_app/home_page.dart';
import 'package:testing_app/util_constants.dart';

/// This widget is the root of your application.
class AppWidget extends StatelessWidget {
  ///
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: UtilConstants.appBarTitle),
    );
  }
}
