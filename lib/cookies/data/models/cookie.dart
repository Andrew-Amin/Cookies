import 'package:webkeyz_task/cookies/domain/entities/coockie.dart';

class CookieModel extends Cookie {
  CookieModel({
    required super.name,
    required super.description,
    required super.price,
    isPremium = false,
    required super.imageUrl,
  });
}
