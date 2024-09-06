import 'package:flutter_snippet/data/destinations_data_source.dart';
import 'package:flutter_snippet/data/destinations_repository.dart';

class DI {
  static final destinationsDataSource = DestinationsDataSource();
  static final destinationsRepository = DestinationsRepository();
}