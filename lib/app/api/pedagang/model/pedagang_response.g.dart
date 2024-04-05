// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedagang_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PedagangResponse _$PedagangResponseFromJson(Map<String, dynamic> json) =>
    PedagangResponse()
      ..data = json['data'] == null
          ? null
          : PedagangModel.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$PedagangResponseToJson(PedagangResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
