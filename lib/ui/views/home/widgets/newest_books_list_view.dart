import 'package:flutter/material.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      // itemCount: state.books.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        // child: BookListViewItem(book: state.books[index]),
      ),
    );
  }
}
// CustomErrorWidget(errorMessage: state.errorMessage)

// NewestBooksLoadingWidget()
