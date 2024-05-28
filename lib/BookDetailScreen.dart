import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final Map<String, dynamic> book;

  BookDetailScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(book['coverImage'], height: 200),
            ),
            SizedBox(height: 20),
            Text(
              book['title'],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Author: ${book['author']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              book['description'],
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
