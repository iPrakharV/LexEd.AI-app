import 'package:flutter/material.dart';
import 'package:lexed_ai_app/screens/result.dart';
import 'package:url_launcher/url_launcher.dart';

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
            SizedBox(height: 20),
            InkWell(
              onTap: () => _launchURL('https://www.google.com'),
              child: Text(
                'Go to the website',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
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

  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}