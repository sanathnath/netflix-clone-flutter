import 'package:flutter/material.dart';
import 'package:netflix_ui/presentation/new_and_hot/widgets/coming_soon_card.dart';

import 'widgets/everyones_watching_card.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            title: Text(
              "New & Hot",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            actions: [
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
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              indicator: BoxDecoration(
                border: Border.all(color: Colors.black, width: 5),
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              tabs: [
                Tab(
                  text: "🍿 Coming Soon",
                ),
                Tab(
                  text: "👀 Everyone's Watching",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) {
        return ComingSoonWidget();
      },
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, index) {
        return EveryonesWatchingWidget();
      },
    );
  }
}
