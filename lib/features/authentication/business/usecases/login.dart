import 'package:dartz/dartz.dart';

import '../../../../../core/params/params.dart';
import '../../../../core/responses/errors/failure.dart';
import '../entities/user_entity.dart';
import '../repositories/authentication_repository.dart';

class Login {
  final AuthenticationRepository authenticationRepository;

  Login({required this.authenticationRepository});

  Future<Either<Failure, UserEntity>> call({
    required UserSignInParams userParams,
  }) async {
    return await authenticationRepository.signIn(userParams: userParams);
  }
}
