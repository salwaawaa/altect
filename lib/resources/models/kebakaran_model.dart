class KebakaranModel {
  final int? id;
  final int userId;
  final int locationId;
  final String photo;
  final String? createdAt;

  KebakaranModel(
      {this.id, required this.userId, required this.locationId, required this.photo, this.createdAt});

  factory KebakaranModel.fromMap(Map<String, dynamic> data) {
    return KebakaranModel(userId: data['userId'], locationId: data['locationId'], photo: data['photo']);
  }

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'locationId': locationId,
        'photo': photo,
      };
}
