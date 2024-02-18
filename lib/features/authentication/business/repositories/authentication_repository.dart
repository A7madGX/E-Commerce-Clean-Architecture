import 'package:dartz/dartz.dart';

import '../../../../../core/params/params.dart';
import '../../../../core/responses/errors/failure.dart';
import '../entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, UserEntity>> signIn({
    required UserSignInParams userParams,
  });

  Future<Either<Failure, UserEntity>> signUp({
    required UserSignUpParams userParams,
  });
}
