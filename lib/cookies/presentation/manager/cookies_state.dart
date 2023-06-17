part of "cookies_cubit.dart";

abstract class CookiesState {}

class CookiesInitial extends CookiesState {}

class CookiesUpdateCardState extends CookiesState {
  int numberOfItems;

  CookiesUpdateCardState(this.numberOfItems);
}
