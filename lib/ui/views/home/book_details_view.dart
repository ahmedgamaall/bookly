import 'package:bookly/models/book.dart';
import 'package:bookly/ui/views/home/widgets/book_details_section.dart';
import 'package:bookly/ui/views/home/widgets/custom_book_details_appbar.dart';
import 'package:bookly/ui/views/home/widgets/similar_books_list_section.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  final Book book;
  
  const BookDetailsView({super.key, required this.book});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(book: book),
                const Expanded(child: SizedBox(height: 50)),
                // const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    ),),
    );
  }
}
