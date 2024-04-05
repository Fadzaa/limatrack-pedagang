import 'package:json_annotation/json_annotation.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/pedagang.dart';

part 'pedagang_response.g.dart';

@JsonSerializable()
class PedagangResponse {
  PedagangModel? data;

  PedagangResponse();

  factory PedagangResponse.fromJson(Map<String, dynamic> json) =>
      _$PedagangResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PedagangResponseToJson(this);
}