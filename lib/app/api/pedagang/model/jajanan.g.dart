// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jajanan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Jajanan _$JajananFromJson(Map<String, dynamic> json) => Jajanan(
      id: json['id'] as String?,
      pedagangId: json['pedagang_id'] as String?,
      nama: json['nama'] as String?,
      deskripsi: json['deskripsi'] as String?,
      harga: json['harga'] as int?,
      kategori: json['kategori'] as String?,
      image: json['image'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$JajananToJson(Jajanan instance) => <String, dynamic>{
      'id': instance.id,
      'pedagang_id': instance.pedagangId,
      'nama': instance.nama,
      'deskripsi': instance.deskripsi,
      'harga': instance.harga,
      'kategori': instance.kategori,
      'image': instance.image,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
