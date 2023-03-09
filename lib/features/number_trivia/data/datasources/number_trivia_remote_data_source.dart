import 'dart:convert';

import 'package:number_trivia/core/error/exceptions.dart';

import '../models/number_trivia_model.dart';
import 'package:http/http.dart' as http;

abstract class NumberTriviaRemoteDataSource {
  /// Calls the http://numbersapi.com/{number} endpoint.
  ///
  /// Throws [ServerException] for all error codes.
  Future<NumberTriviaModel> getConcreteNumber(int number);

  /// Calls the http://numbersapi.com/{number} endpoint.
  ///
  /// Throws [ServerException] for all error codes.
  Future<NumberTriviaModel> getRandomNumber();
}

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaRemoteDataSource {
  final http.Client client;

  NumberTriviaRemoteDataSourceImpl(this.client);
  @override
  Future<NumberTriviaModel> getConcreteNumber(int number) =>
      _getConcreteOrRandom('http://numbersapi.com/$number');

  @override
  Future<NumberTriviaModel> getRandomNumber() =>
      _getConcreteOrRandom('http://numbersapi.com/random');

  Future<NumberTriviaModel> _getConcreteOrRandom(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return NumberTriviaModel.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}
