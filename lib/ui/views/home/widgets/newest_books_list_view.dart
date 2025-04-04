import 'package:bookly/models/book.dart';
import 'package:bookly/ui/views/home/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  final List<Book> books;

  const NewestBooksListView({super.key, required this.books});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: BookListViewItem(book: books[index]),
      ),
    );
  }
}
