import 'package:bookly/models/book.dart';
import 'package:bookly/ui/views/home/widgets/book_rating.dart';
import 'package:bookly/ui/views/home/widgets/books_action.dart';
import 'package:bookly/ui/views/home/widgets/custom_book_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          // style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(
          book.volumeInfo.authors!.first,
          // style: Styles.textStyle18.copyWith(
          //   fontStyle: FontStyle.italic,
          //   fontWeight: FontWeight.w500,
          //   color: Colors.white.withOpacity(.7),
          // ),
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
