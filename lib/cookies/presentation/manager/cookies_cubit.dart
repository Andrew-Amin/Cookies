import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webkeyz_task/cookies/domain/entities/coockie.dart';
import 'package:webkeyz_task/cookies/domain/entities/offer.dart';
import 'package:webkeyz_task/cookies/domain/use_cases/get_cookies.dart';
import 'package:webkeyz_task/cookies/domain/use_cases/get_offers.dart';
import 'package:webkeyz_task/injection_container.dart';

part 'cookies_state.dart';

class CookiesCubit extends Cubit<CookiesState> {
  CookiesCubit() : super(CookiesInitial());

  final GetCookies _cookies = engine<GetCookies>();
  final GetOffers _offers = engine<GetOffers>();

  int _cartItems = 0;

  int get cartItems => _cartItems;

  void addToCart() {
    _cartItems++;
    emit(CookiesUpdateCardState(_cartItems));
  } //simulating add items to cart

  List<Cookie> getCookies({int size = 10}) => _cookies(size: size);

  List<Offer> getOffers({int size = 10}) => _offers(size: size);
}
