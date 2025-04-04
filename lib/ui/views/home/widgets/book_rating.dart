import 'package:bookly/ui/common/app_strings.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  final num rating;
  final int count;
  final MainAxisAlignment mainAxisAlignment;
  
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(width: 6.3),
        Text(
          '$rating ',
          style: TextStyle(
            fontSize: 16,
            fontFamily: ksFontFamily,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: ksFontFamily,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
