import 'package:bookly/ui/common/app_colors.dart';
import 'package:bookly/ui/common/app_strings.dart';
import 'package:bookly/ui/views/home/widgets/custom_app_bar.dart';
import 'package:bookly/ui/views/home/widgets/featured_books_loading_widget.dart';
import 'package:bookly/ui/views/home/widgets/featured_list_view.dart';
import 'package:bookly/ui/views/home/widgets/newest_books_list_view.dart';
import 'package:bookly/ui/views/home/widgets/newest_books_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return Scaffold(
      backgroundColor: kcPrimaryColor,
      body: SafeArea(
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
                  !viewModel.dataReady
                      ? FeaturedBooksLoadingWidget()
                     
                      :  FeaturedBooksListView(
                          books: viewModel.data ?? [],
                        ),
                  SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      'Newest Books',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: ksFontFamily,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: !viewModel.dataReady
                    ? NewestBooksLoadingWidget()
                    :  NewestBooksListView(
                        books: viewModel.data ?? [],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}
