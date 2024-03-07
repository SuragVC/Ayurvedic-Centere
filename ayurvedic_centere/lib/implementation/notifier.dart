import 'package:ayurvedic_centere/implementation/implementation.dart';
import 'package:flutter/material.dart';

class ProviderNotifier extends ChangeNotifier {
  Future<bool> login({required String username, required String password}) =>
      Implementation.login(username: username, password: password);
}
