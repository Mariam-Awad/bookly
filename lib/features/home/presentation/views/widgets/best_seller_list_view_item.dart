import 'package:bookly/core/utils/assets_manager.dart';
import 'package:bookly/core/utils/constatnts.dart';
import 'package:bookly/core/utils/styles_manager.dart';
import 'package:flutter/material.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    'Harry Potter and the Goblet of the Fire',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: StylesManager.textStyle20
                        .copyWith(fontFamily: gtSectraFine),
                  )),
              const SizedBox(
                height: 3,
              ),
              const Text(
                'J.K. Rowling',
                style: StylesManager.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    '19.99 \$',
                    style: StylesManager.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
