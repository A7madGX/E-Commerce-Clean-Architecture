import 'package:dartz/dartz.dart';

import '../../../../core/params/params.dart';
import '../../../../core/responses/errors/failure.dart';
import '../entities/pokemon_entity.dart';

abstract class PokemonRepository {
  Future<Either<Failure, PokemonEntity>> getPokemon({required PokemonParams params});
}
