import 'package:ctypto_base_app/model/coin_model_2.dart';
import 'package:ctypto_base_app/network/api.dart';
import 'package:get/get.dart';

NetworkHelper networkHelper = NetworkHelper();

class CoinViewModel extends GetxController {
  var coinView = <CoinModel>[].obs;
  // final cointest = CoinModel().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    coinView.value = await networkHelper.coinData();
  }
}
