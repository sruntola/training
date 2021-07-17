class User {
  int? id;
  int? isCustomer;
  int? customerId;
  String? firstName;
  String? lastName;
  String? fullName;
  String? secondName;
  String? dateOfBirth;
  String? phone;
  String? email;
  String? pinCode;
  Position? position;
  ScreenLock? screenLock;
  bool? isAgree;
  String? recommended;
  int? percentage;
  int? numberShare;
  String? blockShare;
  String? memberType;
  String? investorType;
  String? qiid;
  String? about;
  String? address;
  Companies? companies;
  Position? gender;
  Position? employmentStatus;
  String? income;
  String? company;
  String? houseNo;
  String? streetNo;
  CurrentAddress? currentAddress;
  String? permanentHouseNo;
  String? permanentStreetNo;
  CurrentAddress? permanentAddress;
  String? idCard;
  String? familyBook;
  String? residenceBook;
  String? profile;
  String? selfiesPhoto;
  String? letterOfBirthPhoto;
  int? numberOfChildren;
  int? numberOfFamilyMember;
  String? cbcCheck;
  int? cbcScores;
  Position? shiftWorks;
  String? businessesIncome;
  Position? typeOfBusinessActivities;
  String? generalExpenses;
  int? yesOrNoLoanLeasingRepaymentExpenses;
  String? loanLeasingRepaymentExpenses;
  String? certificateOrContractOfEmployment;
  String? salarySlip;
  String? backIdCard;
  String? nameOfInstitution;
  int? confirmationAllInformation;
  Purpose? purpose;

  User(
      {this.id,
      this.isCustomer,
      this.customerId,
      this.firstName,
      this.lastName,
      this.fullName,
      this.secondName,
      this.dateOfBirth,
      this.phone,
      this.email,
      this.pinCode,
      this.position,
      this.screenLock,
      this.isAgree,
      this.recommended,
      this.percentage,
      this.numberShare,
      this.blockShare,
      this.memberType,
      this.investorType,
      this.qiid,
      this.about,
      this.address,
      this.companies,
      this.gender,
      this.employmentStatus,
      this.income,
      this.company,
      this.houseNo,
      this.streetNo,
      this.currentAddress,
      this.permanentHouseNo,
      this.permanentStreetNo,
      this.permanentAddress,
      this.idCard,
      this.familyBook,
      this.residenceBook,
      this.profile,
      this.selfiesPhoto,
      this.letterOfBirthPhoto,
      this.numberOfChildren,
      this.numberOfFamilyMember,
      this.cbcCheck,
      this.cbcScores,
      this.shiftWorks,
      this.businessesIncome,
      this.typeOfBusinessActivities,
      this.generalExpenses,
      this.yesOrNoLoanLeasingRepaymentExpenses,
      this.loanLeasingRepaymentExpenses,
      this.certificateOrContractOfEmployment,
      this.salarySlip,
      this.backIdCard,
      this.nameOfInstitution,
      this.confirmationAllInformation,
      this.purpose});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    isCustomer = json['is_customer'];
    customerId = json['customer_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    fullName = json['full_name'];
    secondName = json['second_name'];
    dateOfBirth = json['date_of_birth'];
    phone = json['phone'];
    email = json['email'];
    pinCode = json['pin_code'];
    position = json['position'] != null
        ? new Position.fromJson(json['position'])
        : null;
    screenLock = json['screen_lock'] != null
        ? new ScreenLock.fromJson(json['screen_lock'])
        : null;
    isAgree = json['is_agree'];
    recommended = json['recommended'];
    percentage = json['percentage'];
    numberShare = json['number_share'];
    blockShare = json['block_share'];
    memberType = json['member_type'];
    investorType = json['investor_type'];
    qiid = json['qiid'];
    about = json['about'];
    address = json['address'];
    companies = json['companies'] != null
        ? new Companies.fromJson(json['companies'])
        : null;
    gender =
        json['gender'] != null ? new Position.fromJson(json['gender']) : null;
    employmentStatus = json['employment_status'] != null
        ? new Position.fromJson(json['employment_status'])
        : null;
    income = json['income'];
    company = json['company'];
    houseNo = json['house_no'];
    streetNo = json['street_no'];
    currentAddress = json['current_address'] != null
        ? new CurrentAddress.fromJson(json['current_address'])
        : null;
    permanentHouseNo = json['permanent_house_no'];
    permanentStreetNo = json['permanent_street_no'];
    permanentAddress = json['permanent_address'] != null
        ? new CurrentAddress.fromJson(json['permanent_address'])
        : null;
    idCard = json['id_card'];
    familyBook = json['family_book'];
    residenceBook = json['residence_book'];
    profile = json['profile'];
    selfiesPhoto = json['selfies_photo'];
    letterOfBirthPhoto = json['letter_of_birth_photo'];
    numberOfChildren = json['number_of_children'];
    numberOfFamilyMember = json['number_of_family_member'];
    cbcCheck = json['cbc_check'];
    cbcScores = json['cbc_scores'];
    shiftWorks = json['shift_works'] != null
        ? new Position.fromJson(json['shift_works'])
        : null;
    businessesIncome = json['businesses_income'];
    typeOfBusinessActivities = json['type_of_business_activities'] != null
        ? new Position.fromJson(json['type_of_business_activities'])
        : null;
    generalExpenses = json['general_expenses'];
    yesOrNoLoanLeasingRepaymentExpenses =
        json['yes_or_no_loan_leasing_repayment_expenses'];
    loanLeasingRepaymentExpenses = json['loan_leasing_repayment_expenses'];
    certificateOrContractOfEmployment =
        json['certificate_or_contract_of_employment'];
    salarySlip = json['salary_slip'];
    backIdCard = json['back_id_card'];
    nameOfInstitution = json['name_of_institution'];
    confirmationAllInformation = json['confirmation_all_information'];
    purpose =
        json['purpose'] != null ? new Purpose.fromJson(json['purpose']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['is_customer'] = this.isCustomer;
    data['customer_id'] = this.customerId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['full_name'] = this.fullName;
    data['second_name'] = this.secondName;
    data['date_of_birth'] = this.dateOfBirth;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['pin_code'] = this.pinCode;
    if (this.position != null) {
      data['position'] = this.position!.toJson();
    }
    if (this.screenLock != null) {
      data['screen_lock'] = this.screenLock!.toJson();
    }
    data['is_agree'] = this.isAgree;
    data['recommended'] = this.recommended;
    data['percentage'] = this.percentage;
    data['number_share'] = this.numberShare;
    data['block_share'] = this.blockShare;
    data['member_type'] = this.memberType;
    data['investor_type'] = this.investorType;
    data['qiid'] = this.qiid;
    data['about'] = this.about;
    data['address'] = this.address;
    if (this.companies != null) {
      data['companies'] = this.companies!.toJson();
    }
    if (this.gender != null) {
      data['gender'] = this.gender!.toJson();
    }
    if (this.employmentStatus != null) {
      data['employment_status'] = this.employmentStatus!.toJson();
    }
    data['income'] = this.income;
    data['company'] = this.company;
    data['house_no'] = this.houseNo;
    data['street_no'] = this.streetNo;
    if (this.currentAddress != null) {
      data['current_address'] = this.currentAddress!.toJson();
    }
    data['permanent_house_no'] = this.permanentHouseNo;
    data['permanent_street_no'] = this.permanentStreetNo;
    if (this.permanentAddress != null) {
      data['permanent_address'] = this.permanentAddress!.toJson();
    }
    data['id_card'] = this.idCard;
    data['family_book'] = this.familyBook;
    data['residence_book'] = this.residenceBook;
    data['profile'] = this.profile;
    data['selfies_photo'] = this.selfiesPhoto;
    data['letter_of_birth_photo'] = this.letterOfBirthPhoto;
    data['number_of_children'] = this.numberOfChildren;
    data['number_of_family_member'] = this.numberOfFamilyMember;
    data['cbc_check'] = this.cbcCheck;
    data['cbc_scores'] = this.cbcScores;
    if (this.shiftWorks != null) {
      data['shift_works'] = this.shiftWorks!.toJson();
    }
    data['businesses_income'] = this.businessesIncome;
    if (this.typeOfBusinessActivities != null) {
      data['type_of_business_activities'] =
          this.typeOfBusinessActivities!.toJson();
    }
    data['general_expenses'] = this.generalExpenses;
    data['yes_or_no_loan_leasing_repayment_expenses'] =
        this.yesOrNoLoanLeasingRepaymentExpenses;
    data['loan_leasing_repayment_expenses'] = this.loanLeasingRepaymentExpenses;
    data['certificate_or_contract_of_employment'] =
        this.certificateOrContractOfEmployment;
    data['salary_slip'] = this.salarySlip;
    data['back_id_card'] = this.backIdCard;
    data['name_of_institution'] = this.nameOfInstitution;
    data['confirmation_all_information'] = this.confirmationAllInformation;
    if (this.purpose != null) {
      data['purpose'] = this.purpose!.toJson();
    }
    return data;
  }
}

class Position {
  int? id;
  String? display;

  Position({this.id, this.display});

  Position.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display'] = this.display;
    return data;
  }
}

class ScreenLock {
  bool? temporary;
  int? tryIn;

  ScreenLock({this.temporary, this.tryIn});

  ScreenLock.fromJson(Map<String, dynamic> json) {
    temporary = json['temporary'];
    tryIn = json['try_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['temporary'] = this.temporary;
    data['try_in'] = this.tryIn;
    return data;
  }
}

class Companies {
  String? name;
  String? logo;
  String? website;
  int? founded;
  String? size;
  String? address;

  Companies(
      {this.name,
      this.logo,
      this.website,
      this.founded,
      this.size,
      this.address});

  Companies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'];
    website = json['website'];
    founded = json['founded'];
    size = json['size'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['logo'] = this.logo;
    data['website'] = this.website;
    data['founded'] = this.founded;
    data['size'] = this.size;
    data['address'] = this.address;
    return data;
  }
}

class CurrentAddress {
  City? city;
  City? district;
  City? commune;
  City? village;

  CurrentAddress({this.city, this.district, this.commune, this.village});

  CurrentAddress.fromJson(Map<String, dynamic> json) {
    city = json['city'] != null ? new City.fromJson(json['city']) : null;
    district =
        json['district'] != null ? new City.fromJson(json['district']) : null;
    commune =
        json['commune'] != null ? new City.fromJson(json['commune']) : null;
    village =
        json['village'] != null ? new City.fromJson(json['village']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.city != null) {
      data['city'] = this.city!.toJson();
    }
    if (this.district != null) {
      data['district'] = this.district!.toJson();
    }
    if (this.commune != null) {
      data['commune'] = this.commune!.toJson();
    }
    if (this.village != null) {
      data['village'] = this.village!.toJson();
    }
    return data;
  }
}

class City {
  String? code;
  String? name;

  City({this.code, this.name});

  City.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    return data;
  }
}

class Purpose {
  Null id;
  Null display;

  Purpose({this.id, this.display});

  Purpose.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    display = json['display'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['display'] = this.display;
    return data;
  }
}
