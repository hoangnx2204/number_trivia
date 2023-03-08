import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/error/exceptions.dart';
import 'package:number_trivia/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';

import 'number_trivia_remote_data_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late NumberTriviaRemoteDataSource dataSource;
  late MockClient client;
  setUp(() {
    client = MockClient();
    dataSource = NumberTriviaRemoteDataSourceImpl(client);
  });
  void setUpMockSuccess200() {
    when(client.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response('{"number": 1}', 200));
  }

  void setUpMockFailure() {
    when(client.get(any, headers: anyNamed('headers')))
        .thenAnswer((_) async => http.Response('some thing wrong', 404));
  }

  group('getConcreteNumber', () {
    const tNumber = 1;
    const tNumberTriviaModel = NumberTriviaModel(tNumber);
    test('''should perform a GET request on a URL with number being the enpoint 
    and with application/json header''', () {
      setUpMockSuccess200();
      dataSource.getConcreteNumber(tNumber);
      verify(client.get(
        Uri.parse('http://numbersapi.com/$tNumber'),
        headers: {'Content-Type': 'application/json'},
      ));
    });
    test('should return number trivia when the response code is 200 (success)',
        () async {
      setUpMockSuccess200();
      final actual = await dataSource.getConcreteNumber(tNumber);
      expect(actual, tNumberTriviaModel);
    });
    test('should throw a ServerException when the response code is error',
        () async {
      setUpMockFailure();
      final call = dataSource.getConcreteNumber(tNumber);
      expect(call, throwsA(const TypeMatcher<ServerException>()));
    });
  });
  group('getRandomNumber', () {
    const tNumberTriviaModel = NumberTriviaModel(1);
    test('''should perform a GET request on a URL with number being the enpoint 
    and with application/json header''', () {
      setUpMockSuccess200();
      dataSource.getRandomNumber();
      verify(client.get(
        Uri.parse('http://numbersapi.com/random'),
        headers: {'Content-Type': 'application/json'},
      ));
    });
    test('should return number trivia when the response code is 200 (success)',
        () async {
      setUpMockSuccess200();
      final actual = await dataSource.getRandomNumber();
      expect(actual, tNumberTriviaModel);
    });
    test('should throw a ServerException when the response code is error',
        () async {
      setUpMockFailure();
      final call = dataSource.getRandomNumber();
      expect(call, throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
