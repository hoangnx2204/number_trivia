import 'dart:convert';

import 'package:number_trivia/core/error/exceptions.dart';
import 'package:number_trivia/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NumberTriviaLocalDataSource {
  Future<void> cacheNumberTrivia(NumberTriviaModel triviaToCache);

  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet conection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences sharedPref;

  NumberTriviaLocalDataSourceImpl(this.sharedPref);
  @override
  Future<NumberTriviaModel> getLastNumberTrivia() {
    final jsonString = sharedPref.getString(CACHED_NUMBER_TRIVIA);
    if (jsonString != null) {
      return Future.value(NumberTriviaModel.fromJson(jsonDecode(jsonString)));
    } else {
      throw CacheException();
    }
  }

  @override
  Future<bool> cacheNumberTrivia(NumberTriviaModel triviaToCache) async {
    final jsonString = jsonEncode(triviaToCache.toJson());
    return sharedPref.setString(CACHED_NUMBER_TRIVIA, jsonString);
  }
}
