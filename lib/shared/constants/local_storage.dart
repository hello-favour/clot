import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  // Create (Save) a string value
  Future<void> createString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Read a string value
  Future<String?> readString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  // Update a string value (same as create in this context)
  Future<void> updateString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
  }

  // Delete a string value
  Future<void> deleteString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }
}
