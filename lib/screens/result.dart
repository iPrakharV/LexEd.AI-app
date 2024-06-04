import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String searchQuery;

  ResultScreen({required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Result'),
      ),
      body: Center(
        child: Text(
          'You searched for: $searchQuery',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}