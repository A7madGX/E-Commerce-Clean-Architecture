import 'package:dartz/dartz.dart';

import '../../../../../core/connection/network_info.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/usecases/usecase.dart';
import '../../business/repositories/pokemon_repository.dart';
import '../datasources/pokemon_local_data_source.dart';
import '../datasources/pokemon_remote_data_source.dart';
import '../models/pokemon_model.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  final PokemonLocalDataSource localDataSource;

  final NetworkInfo networkInfo;

  PokemonRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, PokemonModel>> getPokemon(
      {required PokemonParams params}) async {
    if (await networkInfo.isConnected!) {
      try {
        final remoteActivity =
            await remoteDataSource.getPokemon(params: params);

        localDataSource.cachePokemon(remoteActivity);

        return Right(remoteActivity);
      } on ServerException {
        return Left(ServerFailure(errorMessage: 'This is a server exception'));
      }
    } else {
      try {
        final localActivity = await localDataSource.getLastPokemon();
        return Right(localActivity);
      } on CacheException {
        return Left(CacheFailure(errorMessage: 'No local data found'));
      }
    }
  }
}
