import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/error/exceptions.dart';
import 'package:number_trivia/core/error/failures.dart';
import 'package:number_trivia/core/network/network_info.dart';
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:number_trivia/features/number_trivia/data/repositories/number_trivia_impl.dart';
import 'package:number_trivia/features/number_trivia/domain/entities/number_trivia.dart';

import 'number_trivia_impl_test.mocks.dart';

@GenerateMocks([
  NumberTriviaLocalDataSource,
  NumberTriviaRemoteDataSource,
  NetworkInfo,
])
void main() {
  late NumberTriviaLocalDataSource localDataSource;
  late NumberTriviaRemoteDataSource remoteDataSource;
  late NetworkInfo networkInfo;
  late NumberTriviaImpl repo;
  const tNumber = 1;
  const tNumberTriviaModel = NumberTriviaModel(tNumber);
  const tNumberTrivia = NumberTrivia(tNumber);
  setUp(() {
    localDataSource = MockNumberTriviaLocalDataSource();
    networkInfo = MockNetworkInfo();
    remoteDataSource = MockNumberTriviaRemoteDataSource();
    repo = NumberTriviaImpl(
      localDataSource: localDataSource,
      networkInfo: networkInfo,
      remoteDataSource: remoteDataSource,
    );
    when(localDataSource.getLastNumberTrivia())
        .thenAnswer((_) async => tNumberTriviaModel);
  });

  void runTestOnline(Function body) {
    group('device is online', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => true);
      });
      body();
    });
  }

  void runTestOffline(Function body) {
    group('device is offline', () {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => false);
      });
      body();
    });
  }

  group('getConcreteNumberTrivia', () {
    setUp(() => when(remoteDataSource.getConcreteNumber(tNumber))
        .thenAnswer((_) async => tNumberTriviaModel));
    test('should check if the device is online', () async {
      when(networkInfo.isConnected).thenAnswer((_) async => true);
      await repo.getConcreteNumber(tNumber);
      verify(networkInfo.isConnected);
    });
    runTestOnline(() {
      test(
          'should return remote data when the call to remote data is successful',
          () async {
        final actual = await repo.getConcreteNumber(tNumber);
        verify(remoteDataSource.getConcreteNumber(tNumber));
        expect(actual, const Right(tNumberTrivia));
      });
      test(
          'should cache the data locally when the call to remote data is successful',
          () async {
        await repo.getConcreteNumber(tNumber);
        verify(remoteDataSource.getConcreteNumber(tNumber));
        verify(localDataSource.cacheNumberTrivia(tNumberTriviaModel));
      });
      test(
          'should return server failure when the call to remote data is unsuccessful',
          () async {
        when(remoteDataSource.getConcreteNumber(tNumber))
            .thenThrow(ServerException());
        final actual = await repo.getConcreteNumber(tNumber);
        verify(remoteDataSource.getConcreteNumber(tNumber));
        verifyZeroInteractions(localDataSource);
        expect(actual, Left(ServerFailure()));
      });
    });
    runTestOffline(() {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => false);
      });
      test(
          'should return the last locally data when the cached data is present',
          () async {
        final actual = await repo.getConcreteNumber(tNumber);
        verify(localDataSource.getLastNumberTrivia());
        expect(actual, const Right(tNumberTrivia));
      });
      test('should return cache failure when there is no cached data present',
          () async {
        when(localDataSource.getLastNumberTrivia()).thenThrow(CacheException());
        final actual = await repo.getConcreteNumber(tNumber);
        verify(localDataSource.getLastNumberTrivia());
        verifyNoMoreInteractions(remoteDataSource);
        expect(actual, Left(CacheFailure()));
      });
    });
  });
  group('getRandomNumber', () {
    setUp(() => when(remoteDataSource.getRandomNumber())
        .thenAnswer((_) async => tNumberTriviaModel));

    test('should check if the device is online', () async {
      when(networkInfo.isConnected).thenAnswer((_) async => true);
      await repo.getRandomNumber();
      verify(networkInfo.isConnected);
    });
    runTestOnline(() {
      test(
          'should return remote data when the call to remote data is successful',
          () async {
        final actual = await repo.getRandomNumber();
        verify(remoteDataSource.getRandomNumber());
        expect(actual, const Right(tNumberTrivia));
      });
      test(
          'should cache the data locally when the call to remote data is successful',
          () async {
        await repo.getRandomNumber();
        verify(remoteDataSource.getRandomNumber());
        verify(localDataSource.cacheNumberTrivia(tNumberTriviaModel));
      });
      test(
          'should return server failure when the call to remote data is unsuccessful',
          () async {
        when(remoteDataSource.getRandomNumber()).thenThrow(ServerException());
        final actual = await repo.getRandomNumber();
        verify(remoteDataSource.getRandomNumber());
        verifyZeroInteractions(localDataSource);
        expect(actual, Left(ServerFailure()));
      });
    });
    runTestOffline(() {
      setUp(() {
        when(networkInfo.isConnected).thenAnswer((_) async => false);
      });
      test(
          'should return the last locally data when the cached data is present',
          () async {
        final actual = await repo.getRandomNumber();
        verify(localDataSource.getLastNumberTrivia());
        expect(actual, const Right(tNumberTrivia));
      });
      test('should return cache failure when there is no cached data present',
          () async {
        when(localDataSource.getLastNumberTrivia()).thenThrow(CacheException());
        final actual = await repo.getRandomNumber();
        verify(localDataSource.getLastNumberTrivia());
        verifyNoMoreInteractions(remoteDataSource);
        expect(actual, Left(CacheFailure()));
      });
    });
  });
}
