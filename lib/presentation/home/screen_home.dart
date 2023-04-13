import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_ui/presentation/home/widgets/banner.dart';
import 'package:netflix_ui/presentation/home/widgets/top_ten_list.dart';

import '../widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: [
                    BannerWidget(),
                    MainTitleCard(
                      title: "Released in the past year",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MainTitleCard(
                      title: "Trending Now",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TopTenList(),
                    const SizedBox(
                      height: 10,
                    ),
                    MainTitleCard(
                      title: "Tense Dramas",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 400),
                  switchInCurve: Curves.easeInToLinear,
                  child: scrollNotifier.value
                      ? Container(
                          key: Key("show"),
                          // duration: Duration(seconds: 1),
                          // curve: Curves.easeInOut,
                          width: double.infinity,
                          height: 90,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black.withOpacity(0.9),
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent
                                ]),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/pngimg-netflix_PNG8.png",
                                    width: 60,
                                    height: 60,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    color: Colors.blue,
                                    height: 30,
                                    width: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("Movies",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Categories",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              )
                            ],
                          ),
                        )
                      : SizedBox(
                          key: Key("show"),
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
