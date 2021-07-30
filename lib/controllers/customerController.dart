import 'dart:convert';

import 'package:covid_19_ui/helpers/localDataStorage.dart';
import 'package:covid_19_ui/models/customer/customerModel.dart';
import 'package:covid_19_ui/models/customer/customersModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class CustomerController extends GetxController {
  final customersModel = Customers().obs;
  final isLoading = false.obs;
  final isLoadingMore = false.obs;
  final page = 1.obs;
  var isNext;

   final customerList = <CustomerModel>[].obs;

  //function for get all customers
  //asynchronus function () Future, async, await
  //http

  Future<Customers> fetchCustomersData() async {
    isLoading(true);
    if (page.value > 1) {
      isLoadingMore(true);
      isLoading(false);
    }
    String url =
        'https://cicstaging.z1central.com/api/v2/customer?page=${page.value}';
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
          isNext = customersModel.value.links!.next;
          if (isNext == null) {
            isLoadingMore(false);
          }
          customersModel.value = Customers.fromJson(responseJson);
          customerList.addAll(customersModel.value.data!);
          
        } else {
          print(response.statusCode);
        }
      });
    } catch (message) {
      print(message);
    } finally {
      isLoading(false);
      isLoadingMore(false);
    }
    return customersModel.value;
  }
}
