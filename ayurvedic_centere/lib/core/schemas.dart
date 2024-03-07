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

@JsonSerializable()
class LoginResponse {
  final bool status;
  final String message;
  final String token;
  @JsonKey(name: 'is_superuser')
  final bool isSuperuser;
  @JsonKey(name: 'user_details')
  final UserDetails userDetails;

  LoginResponse({
    required this.status,
    required this.message,
    required this.token,
    required this.isSuperuser,
    required this.userDetails,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class UserDetails {
  final int id;
  @JsonKey(name: 'last_login')
  final DateTime? lastLogin;
  final String name;
  final String phone;
  final String address;
  final String mail;
  final String username;
  final String password;
  @JsonKey(name: 'password_text')
  final String passwordText;
  final int admin;
  @JsonKey(name: 'is_admin')
  final bool isAdmin;
  @JsonKey(name: 'is_active')
  final bool isActive;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  final dynamic branch;

  UserDetails({
    required this.id,
    required this.lastLogin,
    required this.name,
    required this.phone,
    required this.address,
    required this.mail,
    required this.username,
    required this.password,
    required this.passwordText,
    required this.admin,
    required this.isAdmin,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.branch,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}
