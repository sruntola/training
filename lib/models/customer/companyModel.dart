class Companies {
  String? name;
  String? logo;
  String? website;
  String? founded;
  int? size;
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
