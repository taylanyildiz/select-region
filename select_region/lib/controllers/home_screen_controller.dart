import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:select_region/models/country.dart';
import 'package:select_region/models/state.dart';
import '/services/restful_service.dart';

class HomeScreenController extends GetxController {
  /// Service Restful Object
  final restfulService = Get.find<RestfulService>();

  /// List Country
  List<Country> countries = [];

  /// List State
  List<States> states = [];

  late TextEditingController counryController;
  late TextEditingController stateController;

  @override
  void onInit() async {
    counryController = TextEditingController();
    stateController = TextEditingController();
    countries = await restfulService.getCountries();
    update();
    super.onInit();
  }

  FutureOr<Iterable<dynamic>> getCountry(String qery) => countries
      .where((e) => e.name!.toLowerCase().contains(qery.toLowerCase()));

  onSelectCountry(country) async {
    counryController.text = country.name;
    states = await restfulService.getStates(country.id);
  }

  FutureOr<Iterable<dynamic>> getStates(String query) =>
      states.where((e) => e.name!.toLowerCase().contains(query.toLowerCase()));

  onSelectState(state) {
    stateController.text = state.name;
  }
}
