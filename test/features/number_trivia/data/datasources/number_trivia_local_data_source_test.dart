import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/error/exceptions.dart';
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'number_trivia_local_data_source_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late NumberTriviaLocalDataSourceImpl dataSource;
  late SharedPreferences sharedPref;
  setUp(() {
    sharedPref = MockSharedPreferences();
    dataSource = NumberTriviaLocalDataSourceImpl(sharedPref);
  });
  group('getLastNumberTrivia', () {
    const tNumberTriviaModel = NumberTriviaModel(10);
    test(
        'should return NumberTrivia from SharedPreferences when there is one in the cache',
        () async {
      when(sharedPref.getString(CACHED_NUMBER_TRIVIA))
          .thenAnswer((_) => '{"number": 10}');
      final actual = await dataSource.getLastNumberTrivia();
      verify(sharedPref.getString(CACHED_NUMBER_TRIVIA));
      expect(actual, tNumberTriviaModel);
    });
    test('should throw a CacheException when there is not a cached value',
        () async {
      when(sharedPref.getString(CACHED_NUMBER_TRIVIA)).thenAnswer((_) => null);
      expect(
        dataSource.getLastNumberTrivia,
        throwsA(const TypeMatcher<CacheException>()),
      );
    });
  });

  group('cacheNumberTrivia', () {
    const tNumberTriviaModel = NumberTriviaModel(10);
    test('should call SharedPref to cache data', () {
      when(sharedPref.setString(
              CACHED_NUMBER_TRIVIA, jsonEncode(tNumberTriviaModel.toJson())))
          .thenAnswer((_) async => true);
      dataSource.cacheNumberTrivia(tNumberTriviaModel);
      verify(
        sharedPref.setString(
          CACHED_NUMBER_TRIVIA,
          jsonEncode(tNumberTriviaModel.toJson()),
        ),
      );
      // sharedPref.setString(
      //   CACHED_NUMBER_TRIVIA,
      //   tNumberTriviaModel.toJson().toString(),
      // );
    });
  });
}
