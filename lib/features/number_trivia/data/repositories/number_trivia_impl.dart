import 'package:number_trivia/core/error/exceptions.dart';
import 'package:number_trivia/core/mappers/number_trivia_mapper.dart';
import 'package:number_trivia/core/network/network_info.dart';
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

import 'package:number_trivia/core/error/failures.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repositories/number_trivia_repo.dart';

typedef _ConcreteOrRandomChooser = Future<NumberTriviaModel> Function();

class NumberTriviaImpl implements NumberTriviaRepo {
  final NumberTriviaLocalDataSource localDataSource;
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumber(int number) async =>
      _getTrivia(() async => await remoteDataSource.getConcreteNumber(number));

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumber() async =>
      _getTrivia(() async => await remoteDataSource.getRandomNumber());

  Future<Either<Failure, NumberTrivia>> _getTrivia(
      _ConcreteOrRandomChooser getConcreteOrRandom) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await getConcreteOrRandom();
        await localDataSource.cacheNumberTrivia(result);
        return Right(result.toEntity());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final result = await localDataSource.getLastNumberTrivia();
        return Right(result.toEntity());
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
