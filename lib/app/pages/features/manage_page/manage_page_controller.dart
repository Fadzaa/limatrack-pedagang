import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:limatrack_pedagang/app/api/auth/authentication_service.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/pedagang.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/pedagang_response.dart';
import 'package:limatrack_pedagang/app/api/pedagang/pedagang_service.dart';


class ManagePageController extends GetxController {

  PedagangService pedagangService = PedagangService();
  PedagangResponse? pedagangResponse;
  Rx<PedagangModel> pedagangModel = PedagangModel().obs;

  @override
  void onInit() {
    showCurrentPedagang();
    update();
    super.onInit();
  }

  Future showCurrentPedagang() async {
    try {
      final response = await pedagangService.showCurrentPedagang();
      pedagangResponse = PedagangResponse.fromJson(response.data);
      pedagangModel.value = pedagangResponse!.data!;
      update();
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

}