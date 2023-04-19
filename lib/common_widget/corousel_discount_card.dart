import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_project/common_widget/discountcard.dart';

class CarouselDiscountCard extends StatefulWidget {
  const CarouselDiscountCard({super.key});

  @override
  State<CarouselDiscountCard> createState() => _CarouselDiscountCardState();
}

class _CarouselDiscountCardState extends State<CarouselDiscountCard> {
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                print(currentIndex);
              },
              child: CarouselSlider(
                items: List.generate(3, (index) => DiscountCard()),
                carouselController: carouselController,
                options: CarouselOptions(
                  height: 60,
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: List.generate(3, (index) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(index),
                    child: Container(
                      width: currentIndex == index ? 8 : 8,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 2.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == index
                              ? Colors.red
                              : Colors.white),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
