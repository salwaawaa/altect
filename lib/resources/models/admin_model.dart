class AdminModel {
  final int? id;
  final String nama;
  final String password;
  final String email;
  final String? createdAt;
  final String? updatedAt;
  final String role;
  //final String profileUrl;

  AdminModel(
      {this.id,
      required this.nama,
      required this.password,
      required this.email,
      //required this.profileUrl,
      this.createdAt,
      this.updatedAt,
      required this.role});

  factory AdminModel.fromMap(Map<String, dynamic> data) {
    return AdminModel(
        id: data['id'],
        nama: data['nama'],
        password: data['password'],
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
        'email': email,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'role': role,
      };
  Map<String, dynamic> toMapInsert() => {
        'nama': nama,
        'password': password,
        'email': email,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'role': role
      };
}
