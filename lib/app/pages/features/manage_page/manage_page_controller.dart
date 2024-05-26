import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/jajanan.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/pedagang.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/pedagang_response.dart';
import 'package:limatrack_pedagang/app/api/pedagang/pedagang_service.dart';


class ManagePageController extends GetxController {

  PedagangService pedagangService = PedagangService();
  PedagangResponse? pedagangResponse;
  Rx<PedagangModel> pedagangModel = PedagangModel().obs;
  RxList<Jajanan> listJajanan = <Jajanan>[].obs;

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
      listJajanan.value = pedagangModel.value.jajanan!;
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