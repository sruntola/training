import 'package:covid_19_ui/helpers/appConfiguration.dart';
import 'package:covid_19_ui/models/customer/customerModel.dart';
import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  final CustomerModel? customerModel;
  const CustomerCard({Key? key, this.customerModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: padding, right: padding, top: padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
                offset: Offset(1.0, 0.0),
                blurRadius: blurRadius,
                color: boxShadowColor)
          ],
          color: Colors.white),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(customerModel!.photo!),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(borderRadius)),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                customerModel!.name!,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                customerModel!.position!,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                customerModel!.phone!,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          )
        ],

        // AssetImage // local
        // FileImage // file
        // NetworkImage // url
        // MemoryImage  // byte
      ),
    );
  }
}
