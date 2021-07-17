import 'dart:convert';

import 'package:covid_19_ui/helpers/localDataStorage.dart';
import 'package:covid_19_ui/models/user.dart';
import 'package:covid_19_ui/pages/homepage/homepage.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  String url = "https://cicstaging.z1central.com/api/login";
  final user = User().obs;

  final isLoading = false.obs;

  Future<void> onLogin({String? phone, String? password}) async {
    isLoading(true);
    var body = json.encode({"phone": "+855$phone", "password": password});

    try {
      await http.post(Uri.parse(url), body: body, headers: {
        "Accept": "application/json",
        "Content-Type": "application/json"
      }).then(
        (response) {
          if (response.statusCode == 200) {
            print('Response Json: ${response.body}');

            var responseJson = json.decode(response.body);
            var token = responseJson['access_token'];

            LocalDataStorage.storeToken(token);
            print('Token: $token');
            // 200 = > success
            // 201 = > create success
            // 404 = > not found
            // 500 = > internal server error
            // 401 = > bad request
            Get.to(() => HomePage());
          } else {
            print(response.statusCode);
            print('Login Faild');
            Get.snackbar('Login', 'Login failed');
          }
        },
      );
    } finally {
      isLoading(false);
    }
  }

  Future<User> getUser() async {
    isLoading(true);
    String url = 'https://cicstaging.z1central.com/api/user';

    var _token = await LocalDataStorage.getToken();
    try {
      await http.get(Uri.parse(url), headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization": "Bearer $_token",
      }).then((response) {
        if (response.statusCode == 200) {
          var responseJson = json.decode(response.body);
          user.value = User.fromJson(responseJson);
        } else {
          print('Error');
        }
      });
    } finally {
      isLoading(false);
    }
    return user.value;
  }
}
