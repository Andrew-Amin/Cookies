import 'package:flutter_test/flutter_test.dart';
import 'package:webkeyz_task/cookies/data/data_sources/remote/remote_data_source.dart';
import 'package:webkeyz_task/cookies/data/models/cookie.dart';
import 'package:webkeyz_task/cookies/data/models/offer.dart';

main() {
  group("Remote Data Source Testing", () {
    final remoteDataSource = RemoteDataSource();

    test("cookiesData function should return a list of CookieModel", () {
      // act
      final result = remoteDataSource.cookiesData(size: 10);
      // assert
      expect(result.length, 10);
      expect(result, isA<List<CookieModel>>());
    });
    test("offersData function should return a list of OfferModel", () {
      // act
      final result = remoteDataSource.offersData(size: 4);
      // assert
      expect(result.length, 4);
      expect(result, isA<List<OfferModel>>());
    });
  });
}
