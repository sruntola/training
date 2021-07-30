import 'package:covid_19_ui/controllers/customerController.dart';
import 'package:covid_19_ui/models/customer/customerModel.dart';
import 'package:covid_19_ui/widgets/customerCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  final cusCon = Get.put(CustomerController());
  int page = 1;

  fetchMoreData() {
    page++;
    if (page >= 1 && page <= 10) {
      // fetch more data
    } else {
      // stop fetch more data
    }
  }

  @override
  void initState() {
    cusCon.fetchCustomersData();
    super.initState();
  }

  // when done drawing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('Customers'),
      ),
      body: Obx(
        () => cusCon.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : cusCon.customersModel.value.data!.length != 0
                ? NotificationListener<ScrollNotification>(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        CustomerModel item =
                            cusCon.customersModel.value.data![index];
                        return CustomerCard(
                          customerModel: item,
                        );
                      },
                      itemCount: cusCon.customersModel.value.data!.length,
                    ),
                    onNotification: (scrollPixel) {
                      if (scrollPixel.metrics.pixels ==
                          scrollPixel.metrics.maxScrollExtent) {
                        fetchMoreData();
                      }
                      return false;
                    },
                  )
                : Text('No Data'),
      ),
    );
  }
}
