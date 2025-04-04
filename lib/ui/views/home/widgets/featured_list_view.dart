import 'package:bookly/models/book.dart';
import 'package:bookly/ui/views/home/widgets/custom_book_view_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  final List<Book> books;
  final void Function()? onTap;
  
  const FeaturedBooksListView({super.key, required this.books, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: onTap,
            child: CustomBookImage(
              book:
                  books[index],
            ),
          ),
        ),
      ),
    );
  }
}
