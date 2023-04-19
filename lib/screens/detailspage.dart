import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_ui_project/common_widget/circularbutton.dart';
import 'package:shopping_ui_project/common_widget/corousel_discount_card.dart';
import 'package:shopping_ui_project/common_widget/detailscontainer.dart';
import 'package:shopping_ui_project/common_widget/iteamcard.dart';
import 'package:shopping_ui_project/common_widget/menu_list_container.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  // Color change = Color(0xFFFFFFFF);
  bool isExpanded = false;
  bool isExpand = false;
  var selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isExpand = false;
  }

  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _weight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Stack(
              children: [
                Image.asset(
                  "lib/images/restutant.png",
                  height: 296.h,
                  width: _weight,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 250,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircularButton(
                          iconData: Icons.arrow_back_outlined,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Container(
                          child: Row(
                            children: [
                              CircularButton(
                                iconData: Icons.share,
                                onPressed: () {},
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircularButton(
                                iconData: Icons.search,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Container(
              width: _weight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Color(0xFFFFFFFF),
              ),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: DetailsContainer(
                      name: "Mad chef's Kitchen",
                      address: "3 rd lane, West Mumbai",
                      time: "25 - 30 mins",
                      ratings: "4.2 (500+ ratings)",
                      km: "1.5",
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                        height: 60.h,
                        color: Colors.transparent,
                        child: CarouselDiscountCard()),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "MENU",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF4E3D67)),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      color: Colors.transparent,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children:
                            List.generate(7, (index) => MenuListContainer()),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Material(
                          elevation: 15,
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: ExpansionTile(
                              key: Key(index.toString()),
                              //attention
                              initiallyExpanded: index == selected,
                              title: RichText(
                                  text: TextSpan(
                                      text: 'Family Combo',
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                        color: isExpand
                                            ? Color(0xFFFFFFFF)
                                            : Color(0xFF4E3D67),
                                      ),
                                      children: <TextSpan>[
                                    TextSpan(
                                      text: '(5 Iteams)',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w700,
                                        color: isExpand
                                            ? Color(0xFFFFFFFF)
                                            : Color(0xFF4E3D67),
                                      ),
                                    )
                                  ])),
                              trailing: Icon(
                                Icons.keyboard_arrow_down,
                                size: 35,
                                color: isExpanded
                                    ? Color(0xFFFFFFFF)
                                    : Color(0xFF4E3D67),
                              ),
                              backgroundColor: Color(0xFFF55A51),
                              collapsedBackgroundColor: Color(0xFFFFFFFF),
                              children: List.generate(
                                5,
                                (index) => IteamCard(),
                              ),
                              //onExpansionChanged: (bool expanding) => setState(() => this.isExpanded = expanding),

                              onExpansionChanged: ((newState) {
                                isExpand = newState;
                                print(newState);
                                if (newState)
                                  setState(() {
                                    Duration(seconds: 20000);
                                    selected = index;
                                    isExpand = newState;
                                  });
                                else
                                  setState(() {
                                    selected = -1;
                                    isExpand = newState;
                                  });
                                print(selected);
                              }),
                            ),
                          ),
                        );
                      },
                      childCount: 5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF4E3D67),
                  onPressed: () {},
                  child: Icon(
                    Icons.chat,
                    size: 30,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, bottom: 5, top: 15),
                height: 65.h,
                color: Color(0xFFFFFFFF),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    // height: 30.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 26.h,
                          width: 26.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFFFFFF)),
                            ),
                          ),
                        ),
                        Text(
                          "View your group order",
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF)),
                        ),
                        Text(
                          '\u{20B9}${27000000}',
                          style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
