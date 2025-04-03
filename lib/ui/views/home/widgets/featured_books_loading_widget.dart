import 'package:flutter/material.dart';

class FeaturedBooksLoadingWidget extends StatelessWidget {
  const FeaturedBooksLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            // child: Image.asset(Assets.loading),
          ),
        ),
      ),
    );
  }
}
