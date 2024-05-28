import 'package:flutter/material.dart';
import 'BookDetailScreen.dart';
import 'AddBookScreen.dart';
import 'book.dart';
class BooksScreen extends StatefulWidget {
  @override
  _BooksScreenState createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  List<Book> books = [
    Book(title: 'Book 1', author: 'Author 1', imageUrl: 'https://via.placeholder.com/150'),
    Book(title: 'Book 2', author: 'Author 2', imageUrl: 'https://via.placeholder.com/150'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Livres'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(books[index].imageUrl),
            title: Text(books[index].title),
            subtitle: Text(books[index].author),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(book: books[index]),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add book screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddBookScreen(onSubmit: (book) {
              setState(() {
                books.add(book);
              });
            })),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Book {
  final String title;
  final String author;
  final String imageUrl;

  Book({required this.title, required this.author, required this.imageUrl});
}
