import 'package:dartz/dartz.dart';

import '../../../../../core/params/params.dart';
import '../../../../core/responses/errors/failure.dart';
import '../entities/user_entity.dart';
import '../repositories/authentication_repository.dart';

class SignUp {
  final AuthenticationRepository authenticationRepository;

  SignUp({required this.authenticationRepository});

  Future<Either<Failure, UserEntity>> call({
    required UserSignUpParams userParams,
  }) async {
    return await authenticationRepository.signUp(userParams: userParams);
  }
}
