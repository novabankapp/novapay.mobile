
import 'package:nave_app/domain/entities/base_entity.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class User extends BaseEntity {

  @HiveField(0)
  final String firstName;

  @HiveField(1)
  final String lastName;

  @HiveField(3)
  final String uid;

  @HiveField(4)
  final String email;

  /// The user's initials in all caps.
  String get initials => '${firstName[0]}${lastName[0]}'.toUpperCase();

  /// The user's full name separated by a space.
  String get fullName => '$firstName $lastName';

  User({required this.firstName, required this.lastName, required this.uid, required this.email});

  User.fromUser(User user)
      : firstName = user.firstName,
        lastName = user.lastName,
        uid = user.uid,
        email = user.email;

  User.fromJson(Map<String, dynamic> map)
      : firstName = map['firstName'],
        lastName = map['lastName'],
        uid = map['uid'],
        email = map['email'];


  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'uid': uid,
        'email': email
      };


  Map<String, String> toJson2() => {
        'firstName': firstName,
        'lastName': lastName,
        'uid': uid,
        'email': email
      };

  @override
  operator ==(dynamic user) => user is User && uid == user.uid;

  @override
  int get hashCode =>
      firstName.hashCode ^ lastName.hashCode ^ uid.hashCode ^ email.hashCode;
}
