import 'package:bookly/core/utils/styles_manager.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(),
          BooksListView(),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Best Seller',
            textAlign: TextAlign.left,
            style: StylesManager.textStyle18,
          ),
          SizedBox(
            height: 20.0,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
