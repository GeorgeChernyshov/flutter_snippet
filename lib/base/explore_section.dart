import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snippet/data/explore_model.dart';
import 'package:flutter_snippet/ui/crane_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExploreSection extends StatelessWidget {
  final String title;
  final List<ExploreModel> exploreList;

  ExploreSection(this.title, this.exploreList);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: BottomSheetShape,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 20.0, left: 24.0, right: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: craneCaption)
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ExploreList(exploreList)
            )
          ]
        )
      )
    );
  }
}

class ExploreList extends StatelessWidget {
  final List<ExploreModel> exploreList;

  ExploreList(this.exploreList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exploreList.length,
      itemBuilder: (context, index) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ExploreItem(exploreList[index]),
          Divider(color: craneDividerColor)
        ],
      ),
    );
  }
}

class ExploreItem extends StatelessWidget {
  final ExploreModel item;

  ExploreItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: item.imageUrl,
            imageBuilder: (context, imageProvider) => ExploreImageContainer(imageProvider),
            placeholder: (context, url) => Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(4.0))
              ),
              child: SvgPicture.asset(
                'assets/crane-logo.svg'
              )
            )
          ),
          SizedBox(width: 24.0),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.city.getNameToDisplay(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 8.0),
                Text(
                  item.description,
                  style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: craneCaption)
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}

class ExploreImageContainer extends StatelessWidget {
  final ImageProvider imageProvider;

  ExploreImageContainer(this.imageProvider);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        image: DecorationImage(
          image: imageProvider, 
          fit: BoxFit.cover
        )
      )
    );
  }
}