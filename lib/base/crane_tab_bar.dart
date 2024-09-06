import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snippet/home/main_view_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class CraneTabBar extends StatelessWidget {
  final Function onMenuClicked;
  final Widget child;

  CraneTabBar(
    this.onMenuClicked,
    this.child
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  log("Open Drawer");
                  onMenuClicked();
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: SvgPicture.asset("assets/ic_menu.svg")
                ),
              ),
              SizedBox(width: 8.0),
              SvgPicture.asset("assets/crane-logo.svg")
            ]
          ),
        ),
        Expanded(child: child)
      ]
    );
  }
}

class CraneTabs extends StatelessWidget {
  final List<String> titles;
  final CraneScreen tabSelected;
  final Function(CraneScreen) onTabSelected;

  CraneTabs(
    this.titles,
    this.tabSelected,
    this.onTabSelected
  );

  @override
  Widget build(BuildContext context) {
    var tabs = titles.mapIndexed((index, title) {
      var selected = (title == tabSelected.name);
      Widget tabText = Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
        child: Text(
          title.toUpperCase(),
          style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary)
        )
      );

      var tabContent = tabText;

      if (selected) {
        tabContent = Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.onPrimary,
              width: 2.0
            ),
            borderRadius: BorderRadius.all(Radius.circular(16.0))
          ),
          child: tabText,
        );
      }
      
      return GestureDetector(
        onTap: () {
          onTabSelected(CraneScreen.values[index]);
        },
        child: Tab(
          child: tabContent
        )
      );
    }).toList();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: tabs
    );
  }
}