import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddressStorage {
  static const String _key = 'shipping_address';

  // Save address data
  static Future<void> saveAddress(
    Map<String, dynamic> address,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      // Ensure proper JSON encoding
      final String encodedData = jsonEncode(address);
      await prefs.setString(_key, encodedData);
    } catch (e) {
      debugPrint('Error saving address: $e');
    }
  }

  // Get saved address
  static Future<Map<String, dynamic>?> getAddress() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? addressJson = prefs.getString(_key);
      if (addressJson == null) return null;
      return jsonDecode(addressJson) as Map<String, dynamic>;
    } catch (e) {
      debugPrint('Error loading address: $e');
    }
    return null;
  }

  // Clear saved address
  static Future<void> removeAddress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
