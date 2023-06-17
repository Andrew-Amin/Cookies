import 'package:flutter_test/flutter_test.dart';
import 'package:webkeyz_task/cookies/data/data_sources/remote/remote_data_source.dart';
import 'package:webkeyz_task/cookies/data/repositories/repository_implementation.dart';
import 'package:webkeyz_task/cookies/domain/entities/offer.dart';
import 'package:webkeyz_task/cookies/domain/use_cases/get_offers.dart';

void main() {
  group("GetOffers use-case Testing", () {
    final remoteDataSource = RemoteDataSource();
    final repo = CookiesRepository(remoteDataSource: remoteDataSource);
    final GetOffers getOffers = GetOffers(repo: repo);

    test("GetOffers use-case should returns a list of Offer", () {
      // act
      final result = getOffers(size: 20);
      // assert
      expect(result, isA<List<Offer>>());
    });
    test("GetCookies use-case should returns a list with the given length", () {
// act
      final result = getOffers(size: 20);
      // assert
      expect(result.length, 20);
    });
  });
}
