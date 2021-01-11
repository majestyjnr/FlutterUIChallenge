import 'package:FlutterUIChallenge/Day5_NestedTabs/tabs/HomeCategoriesTab.dart';
import 'package:FlutterUIChallenge/Day5_NestedTabs/tabs/HomeEarlyAccessTab.dart';
import 'package:FlutterUIChallenge/Day5_NestedTabs/tabs/HomeEditorsChoiceTab.dart';
import 'package:FlutterUIChallenge/Day5_NestedTabs/tabs/HomeFamilyTab.dart';
import 'package:FlutterUIChallenge/Day5_NestedTabs/tabs/HomeForYouTab.dart';
import 'package:FlutterUIChallenge/Day5_NestedTabs/tabs/HomeTopChartsTab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeTopTabs extends StatefulWidget {
  HomeTopTabs(this.valueOfColor);
  int valueOfColor;

  @override
  _HomeTopTabsState createState() => _HomeTopTabsState();
}

class _HomeTopTabsState extends State<HomeTopTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 6, vsync: this);
    // _tabController.addListener(_handleSelection());
  }

  // _handleSelection() {
  //   setState(() {
  //     widget.valueOfColor = 0xff109618;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: Color(0xff109618),
            unselectedLabelColor: Color(0xff109618),
            onTap: (index) {
              setState(() {
                _tabController.index = index;
              });
            },
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  FontAwesomeIcons.compass,
                  color: _tabController.index == 0
                      ? Color(0xff109618)
                      : Colors.grey,
                ),
                child: Text(
                  'For You',
                  style: TextStyle(
                    color: _tabController.index == 0
                        ? Color(0xff109618)
                        : Colors.grey,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.chartBar,
                  color: _tabController.index == 1
                      ? Color(0xff109618)
                      : Colors.grey,
                ),
                child: Text(
                  'Top Charts',
                  style: TextStyle(
                    color: _tabController.index == 1
                        ? Color(0xff109618)
                        : Colors.grey,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.shapes,
                  color: _tabController.index == 2
                      ? Color(0xff109618)
                      : Colors.grey,
                ),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: _tabController.index == 2
                        ? Color(0xff109618)
                        : Colors.grey,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.solidBookmark,
                  color: _tabController.index == 3
                      ? Color(0xff109618)
                      : Colors.grey,
                ),
                child: Text(
                  'Family',
                  style: TextStyle(
                    color: _tabController.index == 3
                        ? Color(0xff109618)
                        : Colors.grey,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.solidStar,
                  color: _tabController.index == 4
                      ? Color(0xff109618)
                      : Colors.grey,
                ),
                child: Text(
                  'Early Access',
                  style: TextStyle(
                    color: _tabController.index == 4
                        ? Color(0xff109618)
                        : Colors.grey,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.lockOpen,
                  color: _tabController.index == 5
                      ? Color(0xff109618)
                      : Colors.grey,
                ),
                child: Text(
                  "Editor's Choice",
                  style: TextStyle(
                    color: _tabController.index == 5
                        ? Color(0xff109618)
                        : Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            HomeForYouTab(),
            HomeTopChartsTab(),
            HomeCategoriesTab(),
            HomeFamilyTab(),
            HomeEarlyAccessTab(),
            HomeEditorsChoiceTab(),
          ],
        ),
      ),
    );
  }
}
