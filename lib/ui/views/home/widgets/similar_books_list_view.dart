import 'package:bookly/ui/views/home/widgets/custom_book_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        // itemCount: state.books.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            // onTap: () => goToDetailsView(context, state.books[index]),
            child: CustomBookImage(imageUrl: ''
                // state.books[index].volumeInfo.imageLinks?.thumbnail,
                ),
          ),
        ),
      ),
    );
  }
}
// CustomLoadingWidget()

// CustomErrorWidget(errorMessage: state.errorMessage)
