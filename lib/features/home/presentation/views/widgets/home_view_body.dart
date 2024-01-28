import 'package:bookly/core/utils/assets_manager.dart';
import 'package:bookly/core/utils/styles_manager.dart';
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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                      image: AssetImage(AssetManager.logo), fit: BoxFit.fill)),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Goblet of the Fire',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: StylesManager.textStyle20,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
