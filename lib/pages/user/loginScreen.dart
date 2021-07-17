import 'package:covid_19_ui/controllers/userController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final userCon = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: phoneController,
                  onChanged: (valuye) {},
                  decoration: InputDecoration(hintText: 'Enter phone number'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordController,
                  onChanged: (value) {},
                  decoration: InputDecoration(hintText: 'Enter password'),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    userCon.onLogin(
                        phone: phoneController.text,
                        password: passwordController.text);
                  },
                  child: Container(
                      width: double.infinity,
                      child: Center(child: Text('Login'))))
            ],
          ),
          Obx(
            () => userCon.isLoading.value
                ? Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1.0, 0.0),
                              blurRadius: 6,
                              color: Colors.black12),
                        ]),
                    padding: const EdgeInsets.all(30),
                    child: CircularProgressIndicator(),
                  )
                : Container(),
          ),
        ],
      ),
    );
  }
}
