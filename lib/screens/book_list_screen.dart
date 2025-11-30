import 'package:flutter/material.dart';
import '../book_service.dart';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<dynamic> books = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    try {
      final fetchedBooks = await BookService.fetchBooks(
        'flutter',
      ); // Example query
      setState(() {
        books = fetchedBooks;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('Error fetching books: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    print("object world::");
    return Scaffold(
      appBar: AppBar(title: Text('Books')),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : books.isEmpty
          ? Center(child: Text('No books found.'))
          : ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index]['volumeInfo'];
                return ListTile(
                  title: Text(book['title'] ?? 'No Title'),
                  subtitle: Text(
                    book['authors']?.join(', ') ?? 'Unknown Author',
                  ),
                  leading: book['imageLinks'] != null
                      ? Image.network(
                          book['imageLinks']['thumbnail'],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : Icon(Icons.book, size: 50),
                  onTap: () {
                    // Navigate to a detailed book screen (optional)
                  },
                );
              },
            ),
    );
  }
}
