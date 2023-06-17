import 'package:flutter_test/flutter_test.dart';
import 'package:webkeyz_task/cookies/data/data_sources/remote/remote_data_source.dart';
import 'package:webkeyz_task/cookies/data/models/cookie.dart';
import 'package:webkeyz_task/cookies/data/models/offer.dart';
import 'package:webkeyz_task/cookies/data/repositories/repository_implementation.dart';

main() {
  group("Repository implementation Testing", () {
    final remoteDataSource = RemoteDataSource();
    final repo = CookiesRepository(remoteDataSource: remoteDataSource);

    test("getCookies function of the CookiesRepository should return a list of CookieModel", () {
      // act
      final result = repo.getCookies(10);
      // assert
      expect(result.length, 10);
      expect(result, isA<List<CookieModel>>());
    });
    test("getOffers function of the CookiesRepository should return a list of OfferModel", () {
      // act
      final result = repo.getOffers(6);
      // assert
      expect(result.length, 6);
      expect(result, isA<List<OfferModel>>());
    });
  });
}
