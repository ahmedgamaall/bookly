import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/offline_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:connectivity_checker/connectivity_checker.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const ConnectivityWidgetWrapper(
      disableInteraction: true,
      offlineWidget: OfflineWidget(),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar(),
                ),
                FeaturedBooksListView(),
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Newest Books', style: Styles.textStyle18),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: NewestBooksListView(),
            ),
          ),
        ],
      ),
    );
  }
}
