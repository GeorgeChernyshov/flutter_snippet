import 'package:flutter_snippet/data/explore_model.dart';
import 'package:flutter_snippet/di.dart';

class DestinationsRepository {
  final _destinationsDataSource = DI.destinationsDataSource;
     
  List<ExploreModel> getDestinations() {
    return _destinationsDataSource.craneDestinations;
  }

  List<ExploreModel> get hotels => _destinationsDataSource.craneHotels;
  List<ExploreModel> get restaraunts => _destinationsDataSource.craneRestaurants;
}