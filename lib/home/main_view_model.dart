import 'package:flutter/material.dart';
import 'package:flutter_snippet/data/explore_model.dart';
import 'package:flutter_snippet/di.dart';

enum CraneScreen {
    fly, sleep, eat;
}

class MainViewModel extends ChangeNotifier {
  final _destinationsRepository = DI.destinationsRepository;

  List<ExploreModel> _craneDestinations = [];
  List<ExploreModel> get craneDestinations => _craneDestinations;

  List<ExploreModel> get hotels => _destinationsRepository.hotels;
  List<ExploreModel> get restaraunts => _destinationsRepository.restaraunts;

  var _tabSelected = CraneScreen.fly;
  CraneScreen get tabSelected => _tabSelected;
  set tabSelected(CraneScreen tab) {
    _tabSelected = tab;
    notifyListeners();
  }

  MainViewModel() {
    _craneDestinations = _destinationsRepository.getDestinations();
  }
}