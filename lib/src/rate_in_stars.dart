// ignore_for_file: prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RatingStars extends HookWidget {
  RatingStars({
    Key? key,
    required this.rating,
    this.iconSize = 30,
    required this.editable,
    this.color = Colors.amber,
  }) : super(key: key);

  final double iconSize;

  final Color color;
  final bool editable;
  final double rating;

  @override
  Widget build(BuildContext context) {
    final shopReview = useState(rating);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: editable
                ? () {
                    shopReview.value = 1;
                  }
                : () {},
            child: shopReview.value > 0 && shopReview.value < 1
                ? Icon(
                    Icons.star_half_rounded,
                    size: iconSize,
                    color: color,
                  )
                : Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: shopReview.value >= 1 && shopReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    shopReview.value = 2;
                  }
                : () {},
            child: shopReview.value <= 1 || shopReview.value >= 2
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: (shopReview.value > 1 || shopReview.value >= 2) &&
                            shopReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : shopReview.value > 1 && shopReview.value < 2
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    shopReview.value = 3;
                  }
                : () {},
            child: shopReview.value <= 2 || shopReview.value >= 3
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: (shopReview.value > 2 || shopReview.value >= 3) &&
                            shopReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : shopReview.value > 2 && shopReview.value < 3
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    shopReview.value = 4;
                  }
                : () {},
            child: shopReview.value <= 3 || shopReview.value >= 4
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: (shopReview.value > 3 || shopReview.value >= 4) &&
                            shopReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : shopReview.value > 3 && shopReview.value < 4
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
          const SizedBox(
            width: 2,
          ),
          GestureDetector(
            onTap: editable
                ? () {
                    shopReview.value = 5;
                  }
                : () {},
            child: shopReview.value <= 4 || shopReview.value >= 5
                ? Icon(
                    Icons.star_rate_rounded,
                    size: iconSize,
                    color: shopReview.value > 4 && shopReview.value <= 5
                        ? color
                        : const Color(0xffC4C4C4),
                  )
                : shopReview.value > 4 && shopReview.value < 5
                    ? Icon(
                        Icons.star_half_rounded,
                        size: iconSize,
                        color: color,
                      )
                    : const SizedBox(
                        height: 0,
                      ),
          ),
        ],
      ),
    );
  }
}
