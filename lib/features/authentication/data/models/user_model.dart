import '../../business/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required String name,
  }) : super(
          name: name,
        );

  factory UserModel.fromJson({required Map<String, dynamic> json}) {
    return UserModel(
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
    };
  }
}
