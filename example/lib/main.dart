import 'package:flutter/material.dart';
import 'package:rate_in_stars/rate_in_stars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // RatingStars(rating: 3.5, editable: false) - to display the rating without editing
        home: RatingStars(
          rating: 3.5,
          editable: true,
          iconSize: 28,
          color: Colors.green,
        ));
  }
}
