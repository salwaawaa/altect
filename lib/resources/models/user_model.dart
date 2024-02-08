class UserModel {
  final int? id;
  final String nama;
  final String password;
  final String alamat;
  final String email;
  final String? createdAt;
  final String? updatedAt;
  final String role;
  //final String profileUrl;

  UserModel(
      {this.id,
      required this.nama,
      required this.alamat,
      required this.password,
      required this.email,
      //required this.profileUrl,
      this.createdAt,
      this.updatedAt,
      required this.role});

  factory UserModel.fromMap(Map<String, dynamic> data) {
    return UserModel(
        id: data['id'],
        nama: data['nama'],
        password: data['password'],
        alamat: data['alamat'],
        email: data['email'],
        createdAt: data['createdAt'],
        updatedAt: data['updatedAt'],
        role: data['role'],
        //profileUrl: data['profileUrl']
        );
  }

  Map<String, dynamic> toMap() => {
        'id': id,
        'nama': nama,
        'password': password,
        'alamat': alamat,
        'email': email,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'role': role,
      };
  Map<String, dynamic> toMapInsert() => {
        'nama': nama,
        'password': password,
        'alamat': alamat,
        'email': email,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'role': role
      };
}
