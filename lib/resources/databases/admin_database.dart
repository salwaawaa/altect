import 'package:altect/resources/models/admin_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AdminDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "admin";

  Future<List<Map<String, dynamic>>> selectAll() async {
    try {
      return await _supabase.from(table).select();
    } catch (e) {
      print(e);
      return [];
    }
  }

  Future<AdminModel?> select({required String email}) async {
    try {
      return await _supabase
          .from(table)
          .select()
          .eq("email", email)
          .withConverter<AdminModel>((data) => AdminModel.fromMap(data[0]));
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future insert({required AdminModel adminModel}) async {
    try {
      return await _supabase
          .from(table)
          .insert(adminModel.toMapInsert())
          .select();
    } catch (e) {
      print(e);
      return false;
    }
  }
}
