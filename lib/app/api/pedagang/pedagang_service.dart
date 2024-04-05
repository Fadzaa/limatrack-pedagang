
import 'dart:io';

import 'package:dio/dio.dart';

import '../api_endpoint.dart';
import '../dio_instance.dart';

class PedagangService {
  final DioInstance _dioInstance = DioInstance();

  Future<Response> imageVerifikasi(FormData formData) async {
    try {
      final response = await _dioInstance.postImageRequest(
          endpoint: '${ApiEndPoint.baseUrl}/image-verifikasi/store',
          isAuthorize: true,
          data: formData
      );

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response> storePedagang(
      String namaWarung,
      String jamBuka,
      String jamTutup,
      String daerahDagang,
      File banner,
      File? sertifikathalal
      ) async {
    try {
      final response = await _dioInstance.postRequest(
          endpoint: '${ApiEndPoint.baseUrl}/image-verifikasi/store' ,
          isAuthorize: true,
          data: {
            'nama_warung': namaWarung,
            'jam_buka': jamBuka,
            'jam_tutup': jamTutup,
            'daerah_dagang': daerahDagang,
            'banner': banner,
            'dokumen_sertifikat_halal': sertifikathalal,
          }
      );

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }


}