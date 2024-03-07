// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schemas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Patient _$PatientFromJson(Map<String, dynamic> json) => Patient(
      name: json['name'] as String,
      executive: json['executive'] as String,
      payment: (json['payment'] as num).toDouble(),
      phone: json['phone'] as String,
      address: json['address'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      discountAmount: (json['discountAmount'] as num).toDouble(),
      advanceAmount: (json['advanceAmount'] as num).toDouble(),
      balanceAmount: (json['balanceAmount'] as num).toDouble(),
      dateAndTime: DateTime.parse(json['dateAndTime'] as String),
      id: json['id'] as int,
      male: json['male'] as String,
      female: json['female'] as String,
      branch: json['branch'] as String,
      treatments: json['treatments'] as String,
    );

Map<String, dynamic> _$PatientToJson(Patient instance) => <String, dynamic>{
      'name': instance.name,
      'executive': instance.executive,
      'payment': instance.payment,
      'phone': instance.phone,
      'address': instance.address,
      'totalAmount': instance.totalAmount,
      'discountAmount': instance.discountAmount,
      'advanceAmount': instance.advanceAmount,
      'balanceAmount': instance.balanceAmount,
      'dateAndTime': instance.dateAndTime.toIso8601String(),
      'id': instance.id,
      'male': instance.male,
      'female': instance.female,
      'branch': instance.branch,
      'treatments': instance.treatments,
    };

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      status: json['status'] as bool,
      message: json['message'] as String,
      token: json['token'] as String,
      isSuperuser: json['is_superuser'] as bool,
      userDetails:
          UserDetails.fromJson(json['user_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'is_superuser': instance.isSuperuser,
      'user_details': instance.userDetails,
    };

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) => UserDetails(
      id: json['id'] as int,
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      mail: json['mail'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      passwordText: json['password_text'] as String,
      admin: json['admin'] as int,
      isAdmin: json['is_admin'] as bool,
      isActive: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      branch: json['branch'],
    );

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_login': instance.lastLogin?.toIso8601String(),
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'mail': instance.mail,
      'username': instance.username,
      'password': instance.password,
      'password_text': instance.passwordText,
      'admin': instance.admin,
      'is_admin': instance.isAdmin,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'branch': instance.branch,
    };
