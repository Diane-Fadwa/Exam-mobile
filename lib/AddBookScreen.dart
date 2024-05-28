import 'package:flutter/material.dart';

class AddBookScreen extends StatefulWidget {
  @override
  _AddBookScreenState createState() => _AddBookScreenState();
}

class _AddBookScreenState extends State<AddBookScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _coverImageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Book'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextFormField(
              controller: _authorController,
              decoration: InputDecoration(labelText: 'Author'),
            ),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
            TextFormField(
              controller: _coverImageController,
              decoration: InputDecoration(labelText: 'Cover Image URL'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final newBook = {
                  'title': _titleController.text,
                  'author': _authorController.text,
                  'description': _descriptionController.text,
                  'coverImage': _coverImageController.text,
                };
                Navigator.pop(context, newBook);
              },
              child: Text('Add Book'),
            ),
          ],
        ),
      ),
    );
  }
}