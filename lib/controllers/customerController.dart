import 'dart:convert';

import 'package:covid_19_ui/helpers/localDataStorage.dart';
import 'package:covid_19_ui/models/customer/customersModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CustomerController extends GetxController {
  final customersModel = Customers().obs;
  final isLoading = false.obs;

  //function for get all customers
  //asynchronus function () Future, async, await
  //http

  Future<Customers> fetchCustomersData() async {
    isLoading(true);
    String url = 'https://cicstaging.z1central.com/api/v2/customer';
    var _token = await LocalDataStorage.getToken();
    print('Token: $_token');
    try {
      http.get(
        Uri.parse(url),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
          "Authorization": "Bearer $_token",
        },
      ).then((response) {
        if (response.statusCode == 200) {
          var responseJson = json.decode(response.body);
          customersModel.value = Customers.fromJson(responseJson);
        } else {
          print(response.statusCode);
        }
      });
    } catch (message) {
      print(message);
    } finally {
      isLoading(false);
    }
    return customersModel.value;
  }
}
