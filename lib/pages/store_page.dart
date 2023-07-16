import 'package:ebook_clone_app/json/store_json.dart';
import 'package:ebook_clone_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../json/home_json.dart';
import 'book_detail_page.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            getSearchAndCart(),
            const SizedBox(
              height: 30,
            ),
            getRecommendation(),
            const SizedBox(
              height: 30,
            ),
            getGenres(),
            const SizedBox(
              height: 30,
            ),
            getTrendingProducts(),
          ],
        ),
      ),
    );
  }

  Widget getSearchAndCart() {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: size.width * 0.8,
          height: 40,
          decoration: BoxDecoration(
            color: grey.withOpacity(0.25),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Search...",
              ),
            ),
          ),
        ),
        Flexible(
          child: IconButton(
              onPressed: () {},
              icon: const Badge(
                backgroundColor: primary,
                label: Text(
                  "3",
                  style: TextStyle(
                    color: white,
                  ),
                ),
                child: Icon(
                  LineIcons.shoppingBag,
                  size: 25,
                ),
              )),
        )
      ],
    );
  }

  Widget getRecommendation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recommendations",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(recommendationsList.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BookDetailPage(
                                img: recommendationsList[index]['img'],
                                price: recommendationsList[index]['price'],
                                title: recommendationsList[index]['title'],
                                subTitle: recommendationsList[index]
                                    ['sub_title'],
                                autherName: recommendationsList[index]
                                    ['author_name'],
                                rate: recommendationsList[index]['rate']
                                    .toString(),
                                page: recommendationsList[index]['page'],
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 120,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: primary,
                              image: DecorationImage(
                                image: AssetImage(
                                    recommendationsList[index]['img']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: black.withOpacity(0.2),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  recommendationsList[index]['favourite']
                                      ? LineIcons.heartAlt
                                      : LineIcons.heart,
                                  size: 20,
                                  color: danger,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            child: Container(
                              width: 65,
                              height: 25,
                              decoration: const BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "\$ " + recommendationsList[index]['price'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          recommendationsList[index]['title'],
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          recommendationsList[index]['sub_title'],
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 13,
                            color: black.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                                ignoreGestures: true,
                                initialRating: recommendationsList[index]
                                    ['rate'],
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 14,
                                itemPadding: const EdgeInsets.only(right: 2),
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: danger,
                                    ),
                                onRatingUpdate: (rating) {}),
                            Text(
                              "(${recommendationsList[index]['rate'].toString()})",
                              style: const TextStyle(
                                fontSize: 13,
                                color: danger,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget getGenres() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Genres",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Wrap(
          runSpacing: 10,
          children: List.generate(storeTags.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: storeTags[index]['color'],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  child: Text(
                    storeTags[index]['label'],
                    style: const TextStyle(
                      fontSize: 12,
                      color: white,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget getTrendingProducts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Trending Books",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(
                  "See all",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(trendingBooks.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BookDetailPage(
                                img: trendingBooks[index]['img'],
                                price: trendingBooks[index]['price'],
                                title: trendingBooks[index]['title'],
                                subTitle: trendingBooks[index]['sub_title'],
                                autherName: trendingBooks[index]['author_name'],
                                rate: trendingBooks[index]['rate'].toString(),
                                page: trendingBooks[index]['page'],
                              )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 120,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: primary,
                              image: DecorationImage(
                                image: AssetImage(trendingBooks[index]['img']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            width: 120,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: black.withOpacity(0.2),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: GestureDetector(
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: const BoxDecoration(
                                  color: white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  trendingBooks[index]['favourite']
                                      ? LineIcons.heartAlt
                                      : LineIcons.heart,
                                  size: 20,
                                  color: danger,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100,
                            child: Container(
                              width: 65,
                              height: 25,
                              decoration: const BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "\$ " + trendingBooks[index]['price'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          trendingBooks[index]['title'],
                          maxLines: 1,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 120,
                        child: Text(
                          trendingBooks[index]['sub_title'],
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 13,
                            color: black.withOpacity(0.4),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                                ignoreGestures: true,
                                initialRating: trendingBooks[index]['rate'],
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 14,
                                itemPadding: const EdgeInsets.only(right: 2),
                                itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: danger,
                                    ),
                                onRatingUpdate: (rating) {}),
                            Text(
                              "(${trendingBooks[index]['rate'].toString()})",
                              style: const TextStyle(
                                fontSize: 13,
                                color: danger,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
