import 'package:json_annotation/json_annotation.dart';

part 'user_details.g.dart';

@JsonSerializable(nullable: true)
class UserDetails {
  String email;
  String firstName;
  String lastName;
  String address;
  String phone;

  UserDetails(
      {this.email, this.firstName, this.lastName, this.address, this.phone});

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);

  @override
  String toString() {
    return '''UserDetails {
      email: $email,
      firstName: $firstName,
      lastName: $lastName,
      address: $address,
      phone: $phone,
    }''';
  }
}