import 'package:webkeyz_task/cookies/domain/entities/coockie.dart';

abstract class Offer {
  Offer({required this.cookie, required this.newPrice});

  Cookie cookie;
  double newPrice;
}
