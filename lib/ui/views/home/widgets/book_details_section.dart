import 'package:bookly/models/book.dart';
import 'package:bookly/ui/common/app_strings.dart';
import 'package:bookly/ui/views/home/widgets/book_rating.dart';
import 'package:bookly/ui/views/home/widgets/books_action.dart';
import 'package:bookly/ui/views/home/widgets/custom_book_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  final Book book;

  const BookDetailsSection({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            book: book,
          ),
        ),
        const SizedBox(height: 43),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: ksFontFamily,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          book.volumeInfo.authors!.first,
          style: TextStyle(
            fontSize: 18,
            fontFamily: ksFontFamily,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: book.volumeInfo.ratingsCount ?? 0,
          rating: book.volumeInfo.averageRating ?? 0,
        ),
        const SizedBox(height: 37),
        BooksAction(book: book),
      ],
    );
  }
}
