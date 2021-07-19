import 'package:covid_19_ui/helpers/localDataStorage.dart';
import 'package:covid_19_ui/pages/homepage/homepage.dart';
import 'package:covid_19_ui/pages/user/loginScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLoading = true;
  onNavigator() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        setState(() {
          isLoading = false;
        });
        LocalDataStorage.getToken()!.then(
          (token) {
            if (token != '') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            } else {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            }
          },
        );
      },
    );
  }

  @override
  void initState() {
    onNavigator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/cic.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Welcome to CiC App',
                style: Theme.of(context).textTheme.headline4,
              ),
              Spacer(),
              // CircularProgressIndicator(),
              SizedBox(
                height: 50,
              ),
              Text('Loading...'),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
