class Petsitters {
  var idpets_sitter;
  var cityid;
  var name;
  var lastname;
  var email;
  var phone;
  var photo_url;
  var edad;

  Petsitters(
      {this.idpets_sitter,
      this.cityid,
      this.name,
      this.lastname,
      this.email,
      this.phone,
      this.photo_url,
      this.edad});

  factory Petsitters.fromJson(Map<String, dynamic> json) {
    return Petsitters(
      idpets_sitter: json['idpets_sitter'],
      cityid: json['emcityidail'],
      name: json['name'],
      lastname: json['lastname'],
      email: json['email'],
      phone: json['phone'],
      photo_url: json['photo_url'],
      edad: json['edad'],
    );
  }
}
