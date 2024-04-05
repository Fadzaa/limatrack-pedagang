// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedagang.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PedagangModel _$PedagangModelFromJson(Map<String, dynamic> json) =>
    PedagangModel()
      ..id = json['id'] as String?
      ..userId = json['user_id'] as String?
      ..namaWarung = json['nama_warung'] as String?
      ..namaPedagang = json['nama_pedagang'] as String?
      ..banner = json['banner'] as String?
      ..status = json['status'] as String?
      ..jamBuka = json['jam_buka'] as String?
      ..jamTutup = json['jam_tutup'] as String?
      ..daerahDagang = json['daerah_dagang'] as String?
      ..averageRating = json['average_rating'] as int?
      ..dokumenSertifikatHalal = json['dokumen_sertifikat_halal'] as String?
      ..sertifikasiHalal = json['sertifikasi_halal'] as bool?
      ..latitude = json['latitude'] as String?
      ..longitude = json['longitude'] as String?
      ..createdAt = json['created_at'] as String?
      ..updatedAt = json['updated_at'] as String?
      ..jajanan = (json['jajanan'] as List<dynamic>?)
          ?.map((e) => Jajanan.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PedagangModelToJson(PedagangModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'nama_warung': instance.namaWarung,
      'nama_pedagang': instance.namaPedagang,
      'banner': instance.banner,
      'status': instance.status,
      'jam_buka': instance.jamBuka,
      'jam_tutup': instance.jamTutup,
      'daerah_dagang': instance.daerahDagang,
      'average_rating': instance.averageRating,
      'dokumen_sertifikat_halal': instance.dokumenSertifikatHalal,
      'sertifikasi_halal': instance.sertifikasiHalal,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'jajanan': instance.jajanan,
    };
