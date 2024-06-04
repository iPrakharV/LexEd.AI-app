import 'package:flutter/material.dart';
import 'result.dart'; // Import the result.dart file

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, welcome to LexEd.AI!',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Enter the duniya daari',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: _performSearch,
                  icon: Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _performSearch() {
    final searchQuery = _searchController.text;
    // Navigate to the ResultScreen and pass the searchQuery
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(searchQuery: searchQuery),
      ),
    );
  }
}