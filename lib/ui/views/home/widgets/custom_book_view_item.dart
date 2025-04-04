import 'package:bookly/models/book.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomBookImage extends StatelessWidget {
  final Book book;
  
  const CustomBookImage({super.key, required this.book});
  
  @override
  Widget build(BuildContext context) {    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: book.volumeInfo.imageLinks?.thumbnail != null
            ? CachedNetworkImage(
                imageUrl: book.volumeInfo.imageLinks!.thumbnail,
                fit: BoxFit.fill,
              )
            : const Placeholder(),
      ),
    );
  }
}
