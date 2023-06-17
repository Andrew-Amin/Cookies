import 'package:flutter_test/flutter_test.dart';
import 'package:webkeyz_task/cookies/data/data_sources/remote/remote_data_source.dart';
import 'package:webkeyz_task/cookies/data/repositories/repository_implementation.dart';
import 'package:webkeyz_task/cookies/domain/entities/coockie.dart';
import 'package:webkeyz_task/cookies/domain/use_cases/get_cookies.dart';

void main() {
  group("GetCookies use-case  Testing", () {
    final remoteDataSource = RemoteDataSource();
    final repo = CookiesRepository(remoteDataSource: remoteDataSource);
    final GetCookies getCookies = GetCookies(repo: repo);

    test("GetCookies use-case should returns a list of Cookie", () {
      // act
      final result = getCookies(size: 8);
      // assert
      expect(result, isA<List<Cookie>>());
    });
    test("GetCookies use-case should returns a list with the given length", () {
// act
      final result = getCookies(size: 8);
      // assert
      expect(result.length, 8);
    });
  });
}
