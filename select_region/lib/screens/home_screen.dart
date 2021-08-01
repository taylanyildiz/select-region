import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:select_region/controllers/controller.dart';
import 'package:select_region/widgets/search_input_box.dart';

class HomeScreen extends GetView<HomeScreenController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (_) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey.shade600,
            title: Text('Restful Request'),
            elevation: 0.0,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SearchInputBox(
                  textController: controller.counryController,
                  label: 'Countries',
                  callBack: controller.getCountry,
                  itemBuilder: (context, country) {
                    return ListTile(
                      title: Text(country.name),
                    );
                  },
                  onSelect: controller.onSelectCountry,
                  validator: (input) => input == null ? '' : null,
                ),
                SizedBox(height: 10.0),
                SearchInputBox(
                  textController: controller.stateController,
                  label: 'States',
                  callBack: controller.getStates,
                  itemBuilder: (context, state) {
                    return ListTile(
                      title: Text(state.name),
                    );
                  },
                  onSelect: controller.onSelectState,
                  validator: (input) => input == null ? '' : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
