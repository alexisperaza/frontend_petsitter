class User {
  var name;
  var email;
  var passworduser;

  User({this.name, this.email, this.passworduser});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        email: json['email'],
        passworduser: json['passworduser']);
  }
}
