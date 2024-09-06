import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CraneDrawer extends StatelessWidget {
  final _screens = ["Find Trips", "My Trips", "Saved Trips", "Price Alerts", "My Account"];

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerItems = [];
    drawerItems.add(
      SvgPicture.asset("assets/ic_crane_drawer.svg")
    );

    for (var screen in _screens) {
      drawerItems.add(SizedBox(height: 24.0));
      drawerItems.add(
        Text(
          screen,
          style: Theme.of(context)
            .textTheme
            .headlineLarge
        )
      );
    }

    return Container(
      color: Theme.of(context).primaryColor,
      child: FractionallySizedBox(
        widthFactor: 0.8,
        child: Padding(
          padding: EdgeInsets.only(left: 24.0, top: 48.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: drawerItems
          ),
        ),
      )
    );
  }
}