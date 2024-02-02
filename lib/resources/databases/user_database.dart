import 'package:altect/resources/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "users";

  Future<List<Map<String, dynamic>>> selectAll() async {
    try {
      return await _supabase.from(table).select();
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<UserModel?> select({required String username}) async {
    try {
      return await _supabase
          .from(table)
          .select()
          .eq("username", username)
          .withConverter<UserModel>((data) => UserModel.fromMap(data[0]));
    } catch (e) {
      print(e);
      return null;
    }
  }
}
