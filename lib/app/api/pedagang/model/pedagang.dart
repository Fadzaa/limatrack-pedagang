import 'package:json_annotation/json_annotation.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/jajanan.dart';

part 'pedagang.g.dart';

@JsonSerializable()
class PedagangModel {
  String? id;
  @JsonKey(name: 'user_id')
  String? userId;
  @JsonKey(name: 'nama_warung')
  String? namaWarung;
  @JsonKey(name: 'nama_pedagang')
  String? namaPedagang;
  String? banner;
  String? status;
  @JsonKey(name: 'jam_buka')
  String? jamBuka;
  @JsonKey(name: 'jam_tutup')
  String? jamTutup;
  @JsonKey(name: 'daerah_dagang')
  String? daerahDagang;
  @JsonKey(name: 'average_rating')
  int? averageRating;
  @JsonKey(name: 'dokumen_sertifikat_halal')
  String? dokumenSertifikatHalal;
  @JsonKey(name: 'sertifikasi_halal')
  bool? sertifikasiHalal;
  String? latitude;
  String? longitude;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  List<Jajanan>? jajanan;

  PedagangModel();

  factory PedagangModel.fromJson(Map<String, dynamic> json) =>
      _$PedagangModelFromJson(json);

  Map<String, dynamic> toJson() => _$PedagangModelToJson(this);
}
