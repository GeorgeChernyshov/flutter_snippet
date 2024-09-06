class City {
  final String name;
  final String country;
  final String latitude;
  final String longitude;

  City(
    this.name,
    this.country,
    this.latitude,
    this.longitude
  );

  String getNameToDisplay() {
    return "$name, $country";
  }
}

class ExploreModel {
  final City city;
  final String description;
  final String imageUrl;

  ExploreModel(
    this.city,
    this.description,
    this.imageUrl
  );
}