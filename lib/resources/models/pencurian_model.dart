class PencurianModel {
  final int? id;
  final int userId;
  final int locationId;
  final String photo;
  final String? createdAt;

  PencurianModel(
      {this.id, required this.userId, required this.locationId, required this.photo, this.createdAt});

  factory PencurianModel.fromMap(Map<String, dynamic> data) {
    return PencurianModel(userId: data['userId'], locationId: data['locationId'], photo: data['photo']);
  }

  Map<String, dynamic> toMap() => {
        'userId': userId,
        'locationId': locationId,
        'photo': photo,
      };
}
