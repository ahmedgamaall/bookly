import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        // itemCount: state.books.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GestureDetector(
            onTap: () async {
              // goToDetailsView(context, state.books[index]);
            },
            // child: CustomBookImage(
            //   imageUrl:
            //       state.books[index].volumeInfo.imageLinks?.thumbnail,
            // ),
          ),
        ),
      ),
    );
  }
}
// FeaturedBooksLoadingWidget()
// CustomErrorWidget(errorMessage: state.errorMessage)
