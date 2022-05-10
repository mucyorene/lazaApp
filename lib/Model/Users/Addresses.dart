class Address {
  int id;
  String ownerName;
  String country;
  String city;
  String phoneNumber;
  String locationName;
  bool saveAsPrimary;

  Address(
      {required this.id,
      required this.ownerName,
      required this.country,
      required this.city,
      required this.phoneNumber,
      required this.locationName,
      required this.saveAsPrimary});

  factory Address.fromJson(Map<dynamic, dynamic> mapFromJson) => Address(
      id: mapFromJson['id'],
      ownerName: mapFromJson['ownerName'],
      country: mapFromJson['country'],
      city: mapFromJson['city'],
      phoneNumber: mapFromJson['phoneNumber'],
      locationName: mapFromJson['locationName'],
      saveAsPrimary: mapFromJson['saveAsPrimary']);

  Map<dynamic, dynamic> mapToJson() {
    return {
      id: id,
      ownerName: ownerName,
      country: country,
      city: city,
      phoneNumber: phoneNumber,
      locationName: locationName,
      saveAsPrimary: saveAsPrimary
    };
  }

  static List<Address>? listOfAddress() {}
}
