import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class Filters extends StatelessWidget {
  static const String routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Filters'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Filters'),
      ),
    );
  }
}
