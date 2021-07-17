import 'package:covid_19_ui/controllers/userController.dart';
import 'package:covid_19_ui/helpers/appColor.dart';
import 'package:covid_19_ui/helpers/localDataStorage.dart';
import 'package:covid_19_ui/helpers/menuList.dart';
import 'package:covid_19_ui/pages/user/loginScreen.dart';
import 'package:covid_19_ui/widgets/advertiseSection.dart';
import 'package:covid_19_ui/widgets/customButton.dart';
import 'package:covid_19_ui/widgets/preventionSection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userCon = Get.put(UserController());

  @override
  void initState() {
    userCon.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  brightness: Brightness.dark,
                  leading: Icon(Icons.menu),
                  elevation: 0,
                  actions: [
                    IconButton(
                        onPressed: () {
                          LocalDataStorage.removeToke();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        icon: Icon(Icons.notifications))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        'COVID-19',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  'https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('USA'),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Are you feeling sick ?',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Good day fellas! So happy to tell you that our latest product about Furniture Apps was released! By using this apps, you can easily search your furniture needs for your house.',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomButton(
                            label: 'Call Now',
                            backgroundColor: Colors.red,
                            icon: Icons.call,
                            onPressed: () {
                              print('Call Now');
                            }),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: CustomButton(
                            label: 'Send SMS',
                            backgroundColor: Colors.blue,
                            icon: Icons.call,
                            onPressed: () {
                              print('Send SMS');
                            }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PreventionSection(
                      title: 'Prevention',
                      onPressed: (value) {
                        print('Title: ${value.label}');
                      },
                      menuList: menuList),
                  AdvertiseSection(
                      image:
                          'http://cdn.mos.cms.futurecdn.net/deqfGXD9AMbBhXf75irkdg.jpg',
                      title: 'Do your own test!',
                      description:
                          'Follow your instruction to do your own test'),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => userCon.isLoading.value
                        ? Container()
                        : Text(
                            '${userCon.user.value.fullName}',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          NetworkImage(userCon.user.value.profile!),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
