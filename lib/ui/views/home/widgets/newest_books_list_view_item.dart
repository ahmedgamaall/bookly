import 'package:bookly/models/book.dart';
import 'package:bookly/ui/common/app_strings.dart';
import 'package:bookly/ui/views/home/widgets/book_rating.dart';
import 'package:bookly/ui/views/home/widgets/custom_book_view_item.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final Book book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () => goToDetailsView(context, book),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(book: book),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo.title!,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: ksFontFamily,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    book.volumeInfo.authors!.first,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: ksFontFamily,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: ksFontFamily,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      BookRating(
                        count: book.volumeInfo.ratingsCount ?? 0,
                        rating: book.volumeInfo.averageRating ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
