import 'package:altect/resources/models/pencurian_model.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PencurianDatabase {
  final SupabaseClient _supabase = Supabase.instance.client;

  final String table = "pencurian";

  Future<List<Map<String, dynamic>>> select({required int id}) async {
    try {
      final data = await _supabase.from(table).select().eq("userId", id);
      return List<Map<String, dynamic>>.from(data);
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

  Future insert({required PencurianModel model}) async {
    try {
      return await _supabase.from(table).insert(model.toMap()).select();
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future update({required int id, required PencurianModel model}) async {
    try {
      await _supabase.from(table).update(model.toMap()).eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future delete({required int id}) async {
    try {
      await _supabase.from(table).delete().eq("id", id);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  selectAll() {}
}
