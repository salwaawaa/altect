class LocationModel {
  final int? id;
  final String lokasi;
  final String? createdAt;
  final String? updatedAt;

  LocationModel({
    this.id,
    required this.lokasi,
    this.createdAt,
    this.updatedAt,
  });

  factory LocationModel.fromMap(Map<String, dynamic> data) {
    return LocationModel(lokasi: data['lokasi']);
  }

  Map<String, dynamic> toMap() => {
        'lokasi': lokasi,
      };
}
