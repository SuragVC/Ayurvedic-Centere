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
