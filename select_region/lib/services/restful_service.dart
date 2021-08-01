import 'package:get/get.dart';
import 'package:select_region/constants/restful_constant.dart';
import 'package:select_region/models/country.dart';
import 'package:select_region/models/state.dart';

class RestfulService extends GetConnect {
  @override
  void onInit() {
    baseUrl = RestfulConstant.HOST + RestfulConstant.PORT + RestfulConstant.API;
    super.onInit();
  }

  getCountries() async {
    var url = RestfulConstant.REGION + RestfulConstant.COUNTRIES;
    Response response = await post(url, {});
    if (response.statusCode == 200) {
      return response.body['countries']
          .map((e) => Country.fromJson(e))
          .toList()
          .cast<Country>()
          .toList();
    }
  }

  getStates(country_id) async {
    String url = RestfulConstant.REGION + RestfulConstant.STATES;
    Response response = await post(url, {"country_id": country_id});
    return response.body['states']
        .map((e) => States.fromJson(e))
        .toList()
        .cast<States>()
        .toList();
  }
}
