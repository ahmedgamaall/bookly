import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/view_model/newest_books_cubit/newest_books_state.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_books_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder:
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: BookListViewItem(book: state.books[index]),
                ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const NewestBooksLoadingWidget();
        }
      },
    );
  }
}
