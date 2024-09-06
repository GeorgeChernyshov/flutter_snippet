import 'package:flutter_snippet/data/cities.dart';
import 'package:flutter_snippet/data/explore_model.dart';

const String DEFAULT_IMAGE_WIDTH = "250";

class DestinationsDataSource {
  var craneDestinations = [
    ExploreModel(
      KHUMBUVALLEY,
      "Nonstop - 5h 16m+",
      "https://images.unsplash.com/photo-1544735716-392fe2489ffa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      MADRID,
      "Nonstop - 2h 12m+",
      "https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      BALI,
      "Nonstop - 6h 20m+",
      "https://images.unsplash.com/photo-1518548419970-58e3b4079ab2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      ROME,
      "Nonstop - 2h 38m+",
      "https://images.unsplash.com/photo-1515542622106-78bda8ba0e5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      GRANADA,
      "Nonstop - 2h 12m+",
      "https://images.unsplash.com/photo-1534423839368-1796a4dd1845?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      MALDIVAS,
      "Nonstop - 9h 24m+",
      "https://images.unsplash.com/photo-1544550581-5f7ceaf7f992?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      WASHINGTONDC,
      "Nonstop - 7h 30m+",
      "https://images.unsplash.com/photo-1557160854-e1e89fdd3286?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      BARCELONA,
      "Nonstop - 2h 12m+",
      "https://images.unsplash.com/photo-1562883676-8c7feb83f09b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      CRETE,
      "Nonstop - 1h 50m+",
      "https://images.unsplash.com/photo-1486575008575-27670acb58db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      NAPLES,
      "Nonstop - 1h 45m+",
      "https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?ixlib=rb-1.2.1&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      DALLAS,
      "Nonstop - 8h 30m+",
      "https://images.unsplash.com/photo-1495749388945-9d6e4e5b67b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      CORDOBA,
      "1 stop - 11h 30m+",
      "https://images.unsplash.com/photo-1562625964-ffe9b2f617fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=250&q=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      BIGSUR,
      "Nonstop - 10h 45m+",
      "https://images.unsplash.com/photo-1561409037-c7be81613c1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      LONDON,
      "Nonstop - 1h 5m+",
      "https://images.unsplash.com/photo-1505761671935-60b3a7427bad?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      PARIS,
      "Nonstop - 2h 25m+",
      "https://images.unsplash.com/photo-1509299349698-dd22323b5963?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    )
  ];

  var craneRestaurants = [
    ExploreModel(
      NAPLES,
      "1286 Restaurants",
      "https://images.unsplash.com/photo-1534308983496-4fabb1a015ee?ixlib=rb-1.2.1&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      DALLAS,
      "2241 Restaurants",
      "https://images.unsplash.com/photo-1495749388945-9d6e4e5b67b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      CORDOBA,
      "876 Restaurants",
      "https://images.unsplash.com/photo-1562625964-ffe9b2f617fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=250&q=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      MADRID,
      "5610 Restaurants",
      "https://images.unsplash.com/photo-1515443961218-a51367888e4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      MALDIVAS,
      "1286 Restaurants",
      "https://images.unsplash.com/flagged/photo-1556202256-af2687079e51?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      ASPEN,
      "2241 Restaurants",
      "https://images.unsplash.com/photo-1542384557-0824d90731ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      BALI,
      "876 Restaurants",
      "https://images.unsplash.com/photo-1567337710282-00832b415979?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    )
  ];

  var craneHotels = [
    ExploreModel(
      MALDIVAS,
      "1286 Available Properties",
      "https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      ASPEN,
      "2241 Available Properties",
      "https://images.unsplash.com/photo-1445019980597-93fa8acb246c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      BALI,
      "876 Available Properties",
      "https://images.unsplash.com/photo-1570213489059-0aac6626cade?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      BIGSUR,
      "5610 Available Properties",
      "https://images.unsplash.com/photo-1561409037-c7be81613c1f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      NAPLES,
      "1286 Available Properties",
      "https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      DALLAS,
      "2241 Available Properties",
      "https://images.unsplash.com/46/sh3y2u5PSaKq8c4LxB3B_submission-photo-4.jpg?ixlib=rb-1.2.1&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    ),
    ExploreModel(
      CORDOBA,
      "876 Available Properties",
      "https://images.unsplash.com/photo-1570214476695-19bd467e6f7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=$DEFAULT_IMAGE_WIDTH"
    )
  ];
}