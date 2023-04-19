import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopping_ui_project/common_widget/custom_cake_card.dart';
import 'package:shopping_ui_project/common_widget/custom_cake_shape.dart';
import 'package:shopping_ui_project/common_widget/custom_card.dart';
import 'package:shopping_ui_project/common_widget/custom_container_text.dart';
import 'package:shopping_ui_project/common_widget/custom_text_form_field.dart';
import 'package:shopping_ui_project/common_widget/flower_tasks.dart';
import 'package:shopping_ui_project/screens/detailspage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _current = 0;

  final CarouselController _controller = CarouselController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Color(0xFFFFFFFF),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Color(0xFF33363F),
                  size: 25.h,
                )),
            title: Image.asset(
              "lib/images/cakeflower.png",
              fit: BoxFit.cover,
              height: 24.h,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.store,
                    color: Color(0xFF33363F),
                    size: 25.h,
                  )),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: CustomTextFormField(
                label: "Search, Flower and Cake",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.transparent,
              height: 90.h,
              // width: 80.w,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    8,
                    (index) => FlowerTasks(
                          text: "Flower",
                          image: "lib/images/flower1.png",
                        )),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                height: 170,
                color: Colors.transparent,
                child: Column(children: [
                  CarouselSlider(
                    items: List.generate(3, (index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset("lib/images/carousel1.png"),
                      );
                    }),
                    carouselController: _controller,
                    options: CarouselOptions(
                        height: 150,
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        //onPageChanged: callbackFunction,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(3, (index) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(index),
                        child: Container(
                          width: 16.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(horizontal: 2.0),
                          decoration: BoxDecoration(
                              //shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20),
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.black
                                      : Colors.red)
                                  .withOpacity(_current == index ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ]),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 14, right: 14),
              child: CustomContainerText(text: "Trending Cakes"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 14, right: 14),
              height: 206.h,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    4,
                    (index) => CustomCard(
                          image: "lib/images/blackforest.png",
                          name: "Black Forest Cake",
                          rs: "350",
                          oldRs: "399",
                          ratting: "4.2 (50 Reviewa)",
                          onPressed: (){
                             Navigator.of(context).push(
                                PageTransition(
                                  child: DetailsPage(),
                                  type: PageTransitionType.fade,
                                ),
                              );
                          },
                        )),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 14, right: 14),
              child: CustomContainerText(text: "Cakes By Shape"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 14, right: 14, top: 5, bottom: 5),
              height: 190,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    3,
                    (index) => CustomCakeShape(
                          image: "lib/images/heartcake.png",
                          name: "Heart Cakes",
                        )),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 14, right: 14),
              child: CustomContainerText(text: "Trending Cakes"),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 14, right: 14),
              height: 206.h,
              color: Colors.transparent,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    4,
                    (index) => CustomCakeCard(
                          image: "lib/images/blackforest.png",
                          name: "Black Forest Cake",
                          rs: "350",
                          oldRs: "399",
                          ratting: "4.2 (50 + Reviewa)",
                        )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
