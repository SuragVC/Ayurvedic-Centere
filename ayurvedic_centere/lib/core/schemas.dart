import 'package:json_annotation/json_annotation.dart';

part 'schemas.g.dart';

@JsonSerializable(explicitToJson: true)
class Patient {
  final String name;
  final String executive;
  final double payment;
  final String phone;
  final String address;
  final double totalAmount;
  final double discountAmount;
  final double advanceAmount;
  final double balanceAmount;
  final DateTime dateAndTime;
  final int id;
  final String male;
  final String female;
  final String branch;
  final String treatments;

  Patient({
    required this.name,
    required this.executive,
    required this.payment,
    required this.phone,
    required this.address,
    required this.totalAmount,
    required this.discountAmount,
    required this.advanceAmount,
    required this.balanceAmount,
    required this.dateAndTime,
    required this.id,
    required this.male,
    required this.female,
    required this.branch,
    required this.treatments,
  });

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);

  Map<String, dynamic> toJson() => _$PatientToJson(this);
}
