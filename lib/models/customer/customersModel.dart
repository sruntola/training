import 'package:covid_19_ui/models/customer/customerModel.dart';
import 'package:covid_19_ui/models/link.dart';
import 'package:covid_19_ui/models/meta.dart';

class Customers {
  List<CustomerModel>? data;
  Links? links;
  Meta? meta;

  Customers({this.data, this.links, this.meta});

  Customers.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CustomerModel>[];
      json['data'].forEach((v) {
        data!.add(new CustomerModel.fromJson(v));
      });
    }
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}
