import 'package:flutter_test/flutter_test.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_trivia/core/network/network_info.dart';

import 'network_info_test.mocks.dart';

@GenerateMocks([InternetConnectionChecker])
void main() {
  late InternetConnectionChecker internetConnectionChecker;
  late NetworkInfoImpl networkInfo;

  setUp(() {
    internetConnectionChecker = MockInternetConnectionChecker();
    networkInfo = NetworkInfoImpl(internetConnectionChecker);
  });
  group('isConnected', () {
    test('should forward the call to InternetConnectionChecker.hasConnection',
        () async {
      final tHasConnectionFuture = Future.value(true);
      when(internetConnectionChecker.hasConnection)
          .thenAnswer((_)  => tHasConnectionFuture);
      final result = networkInfo.isConnected;
      verify(internetConnectionChecker.hasConnection);
      expect(result, tHasConnectionFuture);
    });
  });
}
