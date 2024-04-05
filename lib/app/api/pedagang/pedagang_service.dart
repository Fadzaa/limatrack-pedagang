
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

  Future<Response> storePedagang(FormData formData) async {
    try {
      final response = await _dioInstance.postImageRequest(
          endpoint: '${ApiEndPoint.baseUrl}/pedagang/store' ,
          isAuthorize: true,
          data: formData
      );

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response> storeJajanan(String pedagangId, FormData formData) async {
    try {
      final response = await _dioInstance.postImageRequest(
          endpoint: '${ApiEndPoint.baseUrl}/pedagang/$pedagangId/jajanan' ,
          isAuthorize: true,
          data: formData
      );

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Response> showCurrentPedagang() async {
    try {
      final response = await _dioInstance.getRequest(
          endpoint: '${ApiEndPoint.baseUrl}/pedagang/show-current' ,
          isAuthorize: true,
      );

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

}