
import 'package:nave_app/domain/entities/base_entity.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class User extends BaseEntity {

  @HiveField(0)
  final String fullName;



  @HiveField(2)
  final String uid;

  @HiveField(3)
  final String email;

  /// The user's initials in all caps.
  //String get initials => '${firstName[0]}${lastName[0]}'.toUpperCase();

  /// The user's full name separated by a space.
  //String get fullName => '$firstName $lastName';

  User({required this.fullName, required this.uid, required this.email});

  User.fromUser(User user)
      : fullName = user.fullName,
        uid = user.uid,
        email = user.email;

  User.fromJson(Map<String, dynamic> map)
      : fullName = map['firstName'],
        uid = map['uid'],
        email = map['email'];


  Map<String, dynamic> toJson() => {
        'firstName': fullName,
        'uid': uid,
        'email': email
      };


  Map<String, String> toJson2() => {
        'firstName': fullName,
        'uid': uid,
        'email': email
      };

  @override
  operator ==(dynamic user) => user is User && uid == user.uid;

  @override
  int get hashCode =>
      fullName.hashCode  ^ uid.hashCode ^ email.hashCode;
}
