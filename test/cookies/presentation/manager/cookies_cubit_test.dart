import 'package:flutter_test/flutter_test.dart';
import 'package:webkeyz_task/cookies/domain/entities/coockie.dart';
import 'package:webkeyz_task/cookies/domain/entities/offer.dart';
import 'package:webkeyz_task/cookies/presentation/manager/cookies_cubit.dart';
import 'package:webkeyz_task/injection_container.dart';

void main() {
  initServiceLocator();
  final CookiesCubit cubit = CookiesCubit();

  group("GetCookies use-case  Testing", () {
    test("cubit.getCookies() function should returns a list of Cookie", () {
      // act
      final result = cubit.getCookies(size: 9);
      // assert
      expect(result, isA<List<Cookie>>());
    });
    test("cubit.getCookies() function should returns a list with the given length", () {
// act
      final result = cubit.getCookies(size: 9);
      // assert
      expect(result.length, 9);
    });
  });

  group("GetOffers use-case Testing", () {
    test("cubit.getOffers() function should returns a list of Offer", () {
      // act
      final result = cubit.getOffers(size: 12);
      // assert
      expect(result, isA<List<Offer>>());
    });
    test("cubit.getOffers() function should returns a list with the given length", () {
// act
      final result = cubit.getOffers(size: 12);
      // assert
      expect(result.length, 12);
    });
  });

  group("AddToCare Testing", () {
    test("cubit.cartItems starts with empty", () {
      // act
      final result = cubit.cartItems;
      // assert
      expect(result, equals(0));
    });

    test("cubit.addToCart should increase cartItems by one", () {
      // act
      cubit.addToCart();
      cubit.addToCart();
      cubit.addToCart();
      final result = cubit.cartItems;
      // assert
      expect(result, equals(3));
    });
  });
}
