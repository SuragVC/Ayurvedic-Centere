import 'package:ayurvedic_centere/core/schemas.dart';
import 'package:ayurvedic_centere/implementation/implementation.dart';
import 'package:flutter/material.dart';

class ProviderNotifier extends ChangeNotifier {
  Future<bool> login({required String username, required String password}) =>
      Implementation.login(username: username, password: password);

  Future<bool> register({required Patient patient}) =>
      Implementation.register(patient: patient);

  Future<bool> getPatientList() => Implementation.getPatientList();
  Future<bool> getBranchList() => Implementation.getPatientList();
  List<Patient> patientList = [];
}
