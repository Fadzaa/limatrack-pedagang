import 'package:json_annotation/json_annotation.dart';

part 'jajanan.g.dart';

@JsonSerializable()
class Jajanan {
  String? id;
  @JsonKey(name: 'pedagang_id')
  String? pedagangId;
  String? nama;
  String? deskripsi;
  int? harga;
  String? kategori;
  String? image;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;

  Jajanan({
    this.id,
    this.pedagangId,
    this.nama,
    this.deskripsi,
    this.harga,
    this.kategori,
    this.image,
    this.updatedAt,
    this.createdAt,
  });

  factory Jajanan.fromJson(Map<String, dynamic> json) =>
      _$JajananFromJson(json);

  Map<String, dynamic> toJson() => _$JajananToJson(this);
}
