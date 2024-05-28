import 'package:flutter/material.dart';
import 'BookDetailScreen.dart';
import 'AddBookScreen.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<Map<String, dynamic>> books = [
    {
      'title': 'ALONE A TRUE STORY',
      'author': 'Author 1',
      'description': 'Instead, Alone s stressful and scary moments were entirely fictional and crafted from the minds of director John Hyams and screenwriter Mattias Olsson. Alone s director and writer based their story on the 2011 Swedish movie Försvunnen.',
      'coverImage': 'assets/images-2.jpeg',
    },
    {
      'title': 'Book 2',
      'author': 'Author 2',
      'description': 'The Crying Book is a roving history, spanning a remarkable cast of grief experts showcased in wide–ranging vignettes . . . With a poet s touch, gentle and delightfully promiscuous, Christle moves fluidly across disparate disciplines and between her sources professional and personal lives.',
      'coverImage': 'assets/images.png',
    },
    {
      'title': 'CITY OF ORANGE ',
      'author': 'Author 3',
      'description': 'Sure, here is a summary of the book "City of Orange" by David Yoon:City of Orange is a speculative fiction novel by David Yoon. The story follows an unnamed man who wakes up in a post-apocalyptic world with no memory of how he got there. Struggling with amnesia, he navigates a desolate landscape filled with the remnants of a once-thriving civilization.As the protagonist tries to piece together his fragmented memories, he encounters a Young girl who may hold the key to his past. The novel explores themes of survival, identity, and the human spirits interactions with other survivors and his gradual recollection of his previous life provide a deep and poignant exploration of loss, hope, and the search for meaning in a world that has drastically changed',
      'coverImage': 'assets/BOOK3.jpeg',
    },
    // Add more books as needed
  ];

  void _navigateToAddBookScreen(BuildContext context) async {
    final newBook = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddBookScreen()),
    );

    if (newBook != null) {
      setState(() {
        books.add(newBook);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return Card(
            child: ListTile(
              title: Text(book['title']),
              subtitle: Text(book['author']),
              leading: Image.asset(book['coverImage']),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BookDetailScreen(book: book),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateToAddBookScreen(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}