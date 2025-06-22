import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PaymentStorage {
  static const String _key = 'payment';

  static Future<void> savePayment(
    Map<String, dynamic> payment,
  ) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      // Ensure proper JSON encoding
      final String encodedData = jsonEncode(payment);
      await prefs.setString(_key, encodedData);
    } catch (e) {
      debugPrint('Error saving payment: $e');
    }
  }

  static Future<Map<String, dynamic>?> getPayment() async {
    try {
      final pref = await SharedPreferences.getInstance();
      final String? paymentJson = pref.getString(_key);
      if (paymentJson != null) {
        return jsonDecode(paymentJson) as Map<String, dynamic>;
      }
    } catch (e) {
      debugPrint('Error loading payment: $e');
    }
    return null;
  }
}
