import 'package:webkeyz_task/cookies/domain/entities/coockie.dart';
import 'package:webkeyz_task/cookies/domain/entities/offer.dart';

abstract class RepositoryContract {
  List<Cookie> getCookies(int size);
  List<Offer> getOffers(int size);
}
