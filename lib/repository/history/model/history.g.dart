// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_History _$$_HistoryFromJson(Map<String, dynamic> json) => _$_History(
      id: json['id'] as int,
      serviceType: json['serviceType'] as String,
      name: json['name'] as String,
      recommendedBy: json['recommendedBy'] as String?,
      address: json['address'] as String,
      hospitalImage: json['hospitalImage'] as String,
      documents:
          (json['documents'] as List<dynamic>).map((e) => e as String).toList(),
      feedback: json['feedback'] as String,
      time: json['time'] as String,
      day: json['day'] as String,
    );

Map<String, dynamic> _$$_HistoryToJson(_$_History instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceType': instance.serviceType,
      'name': instance.name,
      'recommendedBy': instance.recommendedBy,
      'address': instance.address,
      'hospitalImage': instance.hospitalImage,
      'documents': instance.documents,
      'feedback': instance.feedback,
      'time': instance.time,
      'day': instance.day,
    };
