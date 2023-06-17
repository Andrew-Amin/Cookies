import 'package:webkeyz_task/cookies/data/models/cookie.dart';
import 'package:webkeyz_task/cookies/data/models/offer.dart';

/// simulate Remote Data Source

class RemoteDataSource {
  List<CookieModel> cookiesData({required int size}) => List<CookieModel>.generate(
        size,
        (index) => CookieModel(
          price: 100.0 * (index + 1),
          name: "Chocolate\nLovers ${index + 1}",
          description:
              "Decadent cocoa cookie with generous dark chocolate chips. Perfectly balanced for chocolate lovers.\nEnjoy your cookie, anytime.",
          imageUrl:
              index.isEven ? "assets/images/pngs/Cookie_1.png" : "assets/images/pngs/image 4.png",
          isPremium: index > 4,
        ),
      );

  List<OfferModel> offersData({required int size}) => List<OfferModel>.generate(
        size,
        (index) => OfferModel(
          cookie: CookieModel(
            price: 100.0 * (index + 1),
            name: "Chocolate\nLovers ${index + 1}",
            description:
                "Decadent cocoa cookie with generous dark chocolate chips. Perfectly balanced for chocolate lovers.\nEnjoy your cookie, anytime.",
            imageUrl:
                index.isEven ? "assets/images/pngs/Cookie_1.png" : "assets/images/pngs/image 4.png",
            isPremium: index > 4,
          ),
          newPrice: (100.0 * (index + 1)) / 2, // 50% discount
        ),
      );
}
