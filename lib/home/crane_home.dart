import 'package:flutter/material.dart';
import 'package:flutter_snippet/base/crane_drawer.dart';
import 'package:flutter_snippet/base/crane_tab_bar.dart';
import 'package:flutter_snippet/base/explore_section.dart';
import 'package:flutter_snippet/home/main_view_model.dart';
import 'package:provider/provider.dart';

class CraneHome extends StatefulWidget {
  @override
  _CraneHomeState createState() => _CraneHomeState();
}

class _CraneHomeState extends State<CraneHome> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        drawer: CraneDrawer(),
        body: Builder( // Add a Builder widget
          builder: (BuildContext context) {
            return CraneHomeContent(
              () => Scaffold.of(context).openDrawer()
            );
          }
        ),
      ),
    );
  }
}

class CraneHomeContent extends StatelessWidget {
  final Function openDrawer;

  CraneHomeContent(this.openDrawer);

  @override
  Widget build(BuildContext context) {
    var viewModel = context.watch<MainViewModel>();

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: HomeTabBar(
        openDrawer,
        viewModel.tabSelected,
        (tab) { 
          viewModel.tabSelected = tab;
        }
      ),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (BuildContext context, Widget? child) {
          return switch(viewModel.tabSelected) {
            CraneScreen.fly => ExploreSection(
              "Explore Flights by Destination", 
              viewModel.craneDestinations
            ),

            CraneScreen.sleep => ExploreSection(
              "Explore Properties by Destination", 
              viewModel.hotels
            ),

            CraneScreen.eat => ExploreSection(
              "Explore Restaurants by Destination", 
              viewModel.restaraunts
            )
          };
        }
      ) 
    );
  }
}

class HomeTabBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 150;

  final Function openDrawer;
  final CraneScreen tabSelected;
  final Function(CraneScreen) onTabSelected;

  HomeTabBar(
    this.openDrawer,
    this.tabSelected,
    this.onTabSelected
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: MediaQuery.of(context).viewPadding.top),
        CraneTabBar(
          openDrawer,
          CraneTabs(
            CraneScreen.values
              .map((e) => e.name)
              .toList(),
            tabSelected,
            onTabSelected
          ) 
        )
      ]
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}