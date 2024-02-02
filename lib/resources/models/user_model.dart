class UserModel {
  final int? id;
  final int nik;
  final String name;
  final String alamat;
  final String username;
  final String? createdAt;
  final String? updatedAt;

  UserModel({
    this.id,
    required this.nik,
    required this.name,
    required this.alamat,
    required this.username,
    this.createdAt,
    this.updatedAt,
  });

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
      id: data['id'],
      nik: data['nik'],
      name: data['name'],
      alamat: data['alamat'],
      username: data['username'],
      createdAt: data['createdAt'],
      updatedAt: data['updatedAt'],
    );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'nik': nik,
        'name': name,
        'alamat': alamat,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
  Map<String, dynamic> toMapInsert() => {
        'id': id,
        'nik': nik,
        'name': name,
        'alamat': alamat,
        'username': username,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };
}
