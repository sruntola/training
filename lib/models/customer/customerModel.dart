import 'package:covid_19_ui/models/customer/companyModel.dart';

class CustomerModel {
  int? id;
  String? photo;
  String? defaultPhoto;
  String? name;
  String? lastName;
  String? position;
  String? company;
  String? dateOfBirth;
  String? gender;
  String? email;
  String? phone;
  String? secondName;
  bool? isAgree;
  String? recommended;
  double? percentage;
  int? numberShare;
  String? memberType;
  String? investorType;
  String? qiid;
  String? about;
  String? address;
  List<Companies>? companies;

  CustomerModel({
    this.id,
    this.photo,
    this.defaultPhoto,
    this.name,
    this.lastName,
    this.position,
    this.company,
    this.dateOfBirth,
    this.gender,
    this.email,
    this.phone,
    this.secondName,
    this.isAgree,
    this.recommended,
    this.percentage,
    this.numberShare,
    this.memberType,
    this.investorType,
    this.qiid,
    this.about,
    this.address,
    this.companies,
  });

  CustomerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photo = json['photo'];
    defaultPhoto = json['default_photo'];
    name = json['name'];
    lastName = json['last_name'];
    position = json['position'];
    company = json['company'];
    dateOfBirth = json['date_of_birth'];
    gender = json['gender'];
    email = json['email'];
    phone = json['phone'];
    secondName = json['second_name'];
    isAgree = json['is_agree'];
    recommended = json['recommended'];
    percentage = json['percentage'];
    numberShare = json['number_share'];
    memberType = json['member_type'];
    investorType = json['investor_type'];
    qiid = json['qiid'];
    about = json['about'];
    address = json['address'];
    if (json['companies'] != null) {
      companies = <Companies>[];
      json['companies'].forEach((v) {
        companies!.add(new Companies.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['photo'] = this.photo;
    data['default_photo'] = this.defaultPhoto;
    data['name'] = this.name;
    data['last_name'] = this.lastName;
    data['position'] = this.position;
    data['company'] = this.company;
    data['date_of_birth'] = this.dateOfBirth;
    data['gender'] = this.gender;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['second_name'] = this.secondName;
    data['is_agree'] = this.isAgree;
    data['recommended'] = this.recommended;
    data['percentage'] = this.percentage;
    data['number_share'] = this.numberShare;
    data['member_type'] = this.memberType;
    data['investor_type'] = this.investorType;
    data['qiid'] = this.qiid;
    data['about'] = this.about;
    data['address'] = this.address;
    if (this.companies != null) {
      data['companies'] = this.companies!.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
