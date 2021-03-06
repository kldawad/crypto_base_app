import 'dart:developer';
import 'package:ctypto_base_app/utils/constans.dart';
import 'package:http/http.dart' as http;
import 'package:ctypto_base_app/model/coin_model_2.dart';

class NetworkHelper {
  Future coinData() async {
    try {
      String url =
          '${baseUrl}api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false';
      Uri uri = Uri.parse(url);

      http.Response response = await http.get(uri);
      log(response.body);
      if (response.statusCode == 200) {
        // List<CoinModel> coinModel = coinModelFromJson(response.body);
        // log('coinModel : ${coinModel.length}');
        List<CoinModel> coinmodel = coinModelFromJson(response.body);
        print('my error :  ${coinmodel.length}');

        return coinmodel;
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      // log('error : ${e.toString()}');
      print(e);
    }
  }
}
