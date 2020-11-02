import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters.dart';
import 'file:///C:/Users/mario.otmacic/Desktop/Mario/flutter/meals_app/lib/screens/categories.dart';
import 'file:///C:/Users/mario.otmacic/Desktop/Mario/flutter/meals_app/lib/screens/category_meals.dart';
import 'package:meals_app/screens/meal_detail.dart';
import 'package:meals_app/screens/tabs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(21, 51, 51, 1)),
              title: TextStyle(fontSize: 20, fontFamily: 'RobotoCondensed', fontWeight: FontWeight.bold))),
      // home: Categories(),
      routes: {
        '/': (ctx) => Tabs(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealDetail.routeName: (ctx) => MealDetail(),
        Filters.routeName: (ctx) => Filters()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
